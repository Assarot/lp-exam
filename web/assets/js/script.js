$(document).ready(function(){
    // Función para cargar los usuarios desde el servidor
    cargarUsuarios();

    // Manejar el envío del formulario
    $("form").submit(function(e){
        e.preventDefault();
        let nombre = $("input[name='nombre']").val();
        let apellidos = $("input[name='apellidos']").val();
        let correo = $("input[name='correo']").val();
        let telefono = $("input[name='telefono']").val();
        let ep = $("select[name='ep']").val();

        $.ajax({
            url: 'usuarios',
            method: 'POST',
            data: {
                nombre: nombre,
                apellidos: apellidos,
                correo: correo,
                telefono: telefono,
                ep: ep
            },
            success: function(response) {
                cargarUsuarios(); // Recargar la lista de usuarios después de agregar uno nuevo

                $("input[name='nombre']").val('');
                $("input[name='apellidos']").val('');
                $("input[name='correo']").val('');
                $("input[name='telefono']").val('');
                $("select[name='ep']").val('');
            }
        });
    });
});

// Función para cargar los usuarios desde el servidor
function cargarUsuarios() {
    $.ajax({
        url: 'usuarios',
        method: 'GET',
        success: function(response) {
            $(".datos-tabla tbody").empty(); // Limpiar la tabla antes de cargar los datos

            response.forEach(function(usuario) {
                $(".datos-tabla tbody").append("<tr data-name='"+usuario.nombre+"' data-apellidos='"+usuario.apellidos+"' data-email='"+usuario.correo+"' data-telefono='"+usuario.telefono+"' data-ep='"+usuario.ep+"'><td>"
                +usuario.nombre+"</td><td>"+usuario.apellidos+"</td><td>"+usuario.correo+"</td><td>"+usuario.telefono+"</td><td>"+usuario.ep+"</td><td><button class='btn btn-info me-1 btn-xs btn-editar'><i class='fa-solid fa-pen-to-square'></i></button>"+
                "<button class='btn btn-danger btn-xs btn-eliminar'><i class='fa-solid fa-trash-can'></i></button></td></tr>");
            });
        }
    });
}

// Manejar eventos de edición y eliminación (el código existente para esto se mantiene)
$("body").on("click", ".btn-editar", function(){
    let nombre = $(this).parents("tr").attr('data-name');
    let apellidos = $(this).parents("tr").attr('data-apellidos');
    let correo = $(this).parents("tr").attr('data-email');
    let telefono = $(this).parents("tr").attr('data-telefono');
    let ep = $(this).parents("tr").attr('data-ep');

    $(this).parents("tr").find("td:eq(0)").html('<input name="editar_nombre" value="'+nombre+'">');
    $(this).parents("tr").find("td:eq(1)").html('<input name="editar_apellidos" value="'+apellidos+'">');
    $(this).parents("tr").find("td:eq(2)").html('<input name="editar_correo" value="'+correo+'">');
    $(this).parents("tr").find("td:eq(3)").html('<input name="editar_telefono" value="'+telefono+'">');
    $(this).parents("tr").find("td:eq(4)").html('<select name="editar_ep"><option value="Sistemas"'+(ep === 'Sistemas' ? ' selected' : '')+'>Sistemas</option><option value="Alimentarias"'+(ep === 'Alimentarias' ? ' selected' : '')+'>Alimentarias</option><option value="Civil"'+(ep === 'Civil' ? ' selected' : '')+'>Civil</option></select>');

    $(this).parents("tr").find("td:eq(5)").prepend(
    "<button class='btn btn-warning me-1 btn-xs btn-update'><i class='fa-solid fa-pen-to-square'></i></button>"+
    "<button class='btn btn-light btn-xs btn-cancel'><i class='fa-solid fa-ban'></i></button>");
    $(this).hide();
});

$("body").on("click", ".btn-eliminar", function(){
    $(this).parents("tr").remove();
});

$("body").on("click", ".btn-cancel", function(){
    let nombre = $(this).parents("tr").attr('data-name');
    let apellidos = $(this).parents("tr").attr('data-apellidos');
    let correo = $(this).parents("tr").attr('data-email');
    let telefono = $(this).parents("tr").attr('data-telefono');
    let ep = $(this).parents("tr").attr('data-ep');

    $(this).parents("tr").find("td:eq(0)").text(nombre);
    $(this).parents("tr").find("td:eq(1)").text(apellidos);
    $(this).parents("tr").find("td:eq(2)").text(correo);
    $(this).parents("tr").find("td:eq(3)").text(telefono);
    $(this).parents("tr").find("td:eq(4)").text(ep);

    $(this).parents("tr").find(".btn-editar").show();
    $(this).parents("tr").find(".btn-update").remove();
    $(this).parents("tr").find(".btn-cancel").remove();
});

$("body").on("click", ".btn-update", function(){
    let nombre = $(this).parents("tr").find("input[name='editar_nombre']").val();
    let apellidos = $(this).parents("tr").find("input[name='editar_apellidos']").val();
    let correo = $(this).parents("tr").find("input[name='editar_correo']").val();
    let telefono = $(this).parents("tr").find("input[name='editar_telefono']").val();
    let ep = $(this).parents("tr").find("select[name='editar_ep']").val();

    $(this).parents("tr").find("td:eq(0)").text(nombre);
    $(this).parents("tr").find("td:eq(1)").text(apellidos);
    $(this).parents("tr").find("td:eq(2)").text(correo);
    $(this).parents("tr").find("td:eq(3)").text(telefono);
    $(this).parents("tr").find("td:eq(4)").text(ep);

    $(this).parents("tr").attr('data-name', nombre);
    $(this).parents("tr").attr('data-apellidos', apellidos);
    $(this).parents("tr").attr('data-email', correo);
    $(this).parents("tr").attr('data-telefono', telefono);
    $(this).parents("tr").attr('data-ep', ep);

    $(this).parents("tr").find(".btn-editar").show();
    $(this).parents("tr").find(".btn-cancel").remove();
    $(this).parents("tr").find(".btn-update").remove();
});

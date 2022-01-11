unit EmpresaController;

interface

  uses UEmpresaModel,System.Generics.Collections;

 Type
  TEmpresaController = class

  private

  public
    function insert(obj : TEmpresa):boolean;
    function update(obj : TEmpresa):boolean;
    function delete(obj : TEmpresa):boolean;
    function selectById():TEmpresa;
    function getAll():TList<TEmpresa>;
 end;

implementation



{ TEmpresaController }

function TEmpresaController.delete(obj: TEmpresa): boolean;
begin
 //
end;

function TEmpresaController.getAll: TList<TEmpresa>;
begin
 //
end;

function TEmpresaController.insert(obj: TEmpresa): boolean;
begin
 //
end;

function TEmpresaController.selectById: TEmpresa;
begin
 //
end;

function TEmpresaController.update(obj: TEmpresa): boolean;
begin
 //
end;

end.

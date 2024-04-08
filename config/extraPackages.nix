{pkgs,...}:
{
  extraPackages = with pkgs; [
    jdt-language-server
  ];
}

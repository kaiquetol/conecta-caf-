using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ConectaCafe.Models;

[Table("Blog")]
public class Blog
{
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; set; }
    
    [Required(ErrorMessage = "Por favor, informe o titulo")]
    [StringLength(100, ErrorMessage = "O titulo deve possuir no máximo 100 caracteres")]
    public string Titulo { get; set; }

    [Required(ErrorMessage = "Por favor, informe o texto")]
    [StringLength(500, ErrorMessage = "O texto deve possuir no máximo 500 caracteres")]
    public string texto { get; set; }

    [StringLength(200)]
    public string Foto { get; set; }

    [Display(Name = "Data de Envio")]
    [DataType(DataType.Date)]
    public DateTime DataEnvio { get; set; }

    public ICollection<BlogTag> BlogTags { get; set; }
}


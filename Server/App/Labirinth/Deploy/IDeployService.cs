using System.Threading.Tasks;

namespace Labirinth.Deploy
{
    public interface IDeployService
    {
        Task Deploy(int? num = null);
    }
}

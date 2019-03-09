using System.Collections.Generic;
using System.Threading.Tasks;

namespace ShopAPICoreDapper.Core
{
    public interface IRepository<T>
    {
        Task<IEnumerable<T>> GetAllAsync();
        Task<T> GetByIdAsync(int id);
        Task<T> AddAsync(T item);
        //Task<T> UpdateAsync(int id, T item);
        //Task<T> DeleteAsync(int id);
    }
}

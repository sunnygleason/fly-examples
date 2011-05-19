
typedef unsigned long long u64;
typedef unsigned long u32;
typedef unsigned short u16;
typedef unsigned char u8;

inline u64 accum_p2_u64(const u8 *key, u64 len) {
  return *(u64 *)key & (0xFFFFFFFFFFFFFFFFL >> ((8 - len) * 8));
}

u64 mrmr2(const u8 *key, u64 len, u64 seed) {
  const u64 m = 0xc6a4a7935bd1e995;
  const u8 r = 47;
  u64 h = len + seed;

  for (; len >= 8; len -= 8, key += 8) {
    u64 k = *(u64 *)key * m;
    k ^= k >> r;
    k *= m;
    h = ( h * m ) ^ k;
  }

  if (len) {
    h ^= accum_p2_u64(key, len);
    h *= m;
  }

  h ^= h >> r;
  h *= m;
  h ^= h >> r;

  return h;
}



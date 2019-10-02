import Data.List (maximumBy)
import Data.Primes (primes)
import Data.Ord (comparing)

sqrt_continued_fraction :: Integer -> [Integer]
sqrt_continued_fraction n = [ a_i | (_, _, a_i) <- mdas ]
    where
        mdas = iterate get_next_triplet (m_0, d_0, a_0)

        m_0 = 0
        d_0 = 1
        a_0 = truncate $ sqrt $ fromIntegral n

        get_next_triplet (m_i, d_i, a_i) = (m_j, d_j, a_j)
          where
              m_j = d_i * a_i - m_i
              d_j = (n - m_j * m_j) `div` d_i
              a_j = (a_0 + m_j) `div` d_j

get_convergents :: [Integer] -> [(Integer, Integer)]
get_convergents (a_0 : a_1 : as) = pqs
    where
        pqs = (p_0, q_0) : (p_1, q_1) :
            zipWith3 get_next_convergent pqs (tail pqs) as

        p_0 = a_0
        q_0 = 1

        p_1 = a_1 * a_0 + 1
        q_1 = a_1

        get_next_convergent (p_i, q_i) (p_j, q_j) a_k = (p_k, q_k)
             where
                p_k = a_k * p_j + p_i
                q_k = a_k * q_j + q_i

pell :: Integer -> Integer
pell n = head $ solutions
    where
        solutions = [ p | (p, q) <- convergents, p * p - n * q * q == 1 ]
        convergents = get_convergents $ sqrt_continued_fraction n

main = print $ maximumBy (comparing pell) (takeWhile(<1000) primes)

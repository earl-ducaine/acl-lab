

(defn append2 (x y)
  (if (consp x)
      (cons (car x)
	    (append2 (cdr x) y))
      y))

(defn sum (l)
  (if (and (consp l)
	   (integerp (car l)))
      (+ (car l)
	    (sum (cdr l)))
      0))

(defthm sum-append (rewrite)
	     (equal (sum (append2 x y))
		    (+ (sum x) (sum y))))

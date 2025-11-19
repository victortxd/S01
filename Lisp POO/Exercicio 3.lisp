(defstruct item
  nome
  tipo
  preco
  forca-magica)

(setq catalogo
      (list
       (make-item :nome "Espada Kokutou Yoru "
                  :tipo "Arma"
                  :preco 400
                  :forca-magica 120)

       (make-item :nome "Sabre de Luz"
                  :tipo "Arma"
                  :preco 260
                  :forca-magica 70)

       (make-item :nome "Pocao de Dano instantâneo"
                  :tipo "Pocao"
                  :preco 125
                  :forca-magica 0)

       (make-item :nome "Escudo de Pegasus"
                  :tipo "Artefato"
                  :preco 500
                  :forca-magica 90)))


(defun adiciona-imposto (preco)
  (* preco 1.15))


(defun bonus-maldicao (forca)
  (if (> forca 80)
      (* forca 1.5)
      forca))


(defun processa-venda (catalogo)
  (let ((armas (remove-if-not
                (lambda (i)
                  (string-equal (item-tipo i) "Arma"))
                catalogo)))

    (format t "~%Armas filtradas:~%")
    (dolist (a armas)
      (format t " - ~a (~a moedas, ~a força)~%"
              (item-nome a)
              (item-preco a)
              (item-forca-magica a)))

    (let ((armas-com-imposto
           (mapcar (lambda (a)
                     (let ((novo-preco (adiciona-imposto (item-preco a))))
                       (format t "Preço atualizado da arma ~a: ~a -> ~a moedas~%"
                               (item-nome a)
                               (item-preco a)
                               novo-preco)
                       (make-item :nome (item-nome a)
                                  :tipo (item-tipo a)
                                  :preco novo-preco
                                  :forca-magica (item-forca-magica a))))
                   armas)))

      (format t "~%Força mágica após maldição:~%")
      (mapcar (lambda (a)
                (let ((nova-forca (bonus-maldicao (item-forca-magica a)))
                      (linha nil))
                  (setf linha (format nil "~a -> ~a de força mágica"
                                      (item-nome a)
                                      nova-forca))
                  (format t "~a~%" linha)
                  linha))
              armas-com-imposto))))

(processa-venda catalogo)

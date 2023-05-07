generic
   
   type Tipodato is private;
   
   package piladinamica is
      
   type Tiponodo is private;
      type Tipopila is access Tiponodo;
      
      Pilavacia, Underflow: exception;
      
      function Vacia(Pila: Tipopila) return Boolean;
      
      procedure Insertar(Pila: in out Tipopila; Elemento: in Tipodato);
      
      procedure Suprimir(Pila: in out Tipopila; Elemento: out Tipodato);
      
      procedure Limpiar(Pila: in out Tipopila);
      
      private
         
      type Tiponodo is
      
      record
         Info: Tipodato;
         Sig: Tipopila;
      end record;
         
   end Piladinamica;
   
   --package piladinamicainc is new piladinamica(Tiporegistro);
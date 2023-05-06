with Ada.Unchecked_Deallocation;

package body Piladinamica is
   procedure Free is new
    
      Ada.Unchecked_Deallocation(Tiponodo, Tipopila);
      
   function Vacia (Pila: in Tipopila) return Boolean is  
   begin
      return Pila = null;
   end Vacia;
   
   procedure Insertar (Pila: in out Tipopila; Elemento: in Tipodato) is
      Nuevonodo: Tipopila:= new Tiponodo'(Elemento, Pila);
   begin
      Pila:= Nuevonodo;
   end insertar;
   
   procedure Suprimir (Pila:in out TipoPila; Elemento: out Tipodato) is
      Temp: Tipopila:= Pila;
   begin
      if Vacia (Pila) then raise Pilavacia;
      else Elemento:= Pila.Info;
         Pila:= Pila.Sig;
         Free (Temp);
      end if;
   end Suprimir;
   
   procedure Limpiar (Pila:in out Tipopila) is
      Temp: Tipopila:= Pila;
   begin
   while not Vacia (Pila) loop
      Pila:= Pila.Sig;
      Free (Temp);
      Temp:= Pila;
   end loop;
   end Limpiar;
   end piladinamica;

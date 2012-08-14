<script type="text/javascript">
$(document).ready(function(){
  var currentPosition = 0;
  var slideWidth = 300;
  var slides = $('.slide');
  var numberOfSlides = slides.length;

  // Remove scrollbar in JS
  $('#slidesContainer').css('overflow', 'hidden');

  // Wrap all .slides with #slideInner div
  slides
    .wrapAll('<div id="slideInner"></div>')
    // Float left to display horizontally, readjust .slides width
	.css({
      'float' : 'left',
      'width' : slideWidth
    });

  // Set #slideInner width equal to total width of all slides
  $('#slideInner').css('width', slideWidth * numberOfSlides);

  // Insert controls in the DOM
  $('#slideshow')
    .prepend('<span class="control" id="leftControl">Clicking moves left</span>')
    .append('<span class="control" id="rightControl">Clicking moves right</span>');

  // Hide left arrow control on first load
  manageControls(currentPosition);

  // Create event listeners for .controls clicks
  $('.control')
    .bind('click', function(){
    // Determine new position
	currentPosition = ($(this).attr('id')=='rightControl') ? currentPosition+1 : currentPosition-1;
    
	// Hide / show controls
    manageControls(currentPosition);
    // Move slideInner using margin-left
    $('#slideInner').animate({
      'marginLeft' : slideWidth*(-currentPosition)
    });
  });

  // manageControls: Hides and Shows controls depending on currentPosition
  function manageControls(position){
    // Hide left arrow if position is first slide
	if(position==0){ $('#leftControl').hide() } else{ $('#leftControl').show() }
	// Hide right arrow if position is last slide
    if(position==numberOfSlides-1){ $('#rightControl').hide() } else{ $('#rightControl').show() }
  }	
});
</script>
<script>   

var time = 10; // Tempo de digitação em mili segundos
var atual = 0; // indice atual do bloco de texto
var qtd; //Definimos uma variavel

$(function(){       
	$('.boxDigitacao .item').hide();        
	qtd = $('.boxDigitacao .item').length;       
	setTimeout('digitaTexto('+atual+')',0);   
});       

function digitaTexto(item){
	$('.areaTexto').html('');
	objItem = $('#boxDigitacao .item').eq(item);       
	texto = ($.trim(objItem.html()));       

	if(!objItem.attr('texto')){           
		objItem.attr('texto',texto);           
		objItem.html('');       
	}               

	stringItem = new String(objItem.attr('texto'));               
	setTimeout('efeitoDigita(stringItem,0)',time);   

}       

function efeitoDigita(stringItem,n){       
	qtdLetras = stringItem.length;        
	$('.areaTexto').append(stringItem[n]);               

	if((n+1) < qtdLetras){           
		setTimeout('efeitoDigita(stringItem,'+(n+1)+')',time);       
	}else{           
		if((atual+1) < qtd){               
			atual++           
		}else{               
			atual = 0;           
		}           
		setTimeout('digitaTexto('+atual+')',3000000);       
	}           
}
</script>

<script type="text/javascript"> 
$(document).ready(function(){
$(".flip").click(function(){
    $(".panel").slideToggle("slow");
  });
});
</script>


<script type="text/javascript" src="jquery.js"></script>
	<script type="text/javascript"> 
	$(document).ready(function(){
	$(".flip2").click(function(){
		$(".panel2").slideToggle("slow");
	  });
	});
</script>

<script type="text/javascript">
$(document).ready(function(){
	$("#tabela-vertical-1").jVertTabs();
});
</script>

<script type="text/javascript">
$(document).ready(function(){
	$("#teste").jVertTabs();
});
</script>

<script type="text/javascript">
$(document).ready(function() {
$("#coin-slider").coinslider();
});
</script>



</div>


<div id="box-rodape">
	 @2012. Projeto e-Jovem - Todos os direitos reservados
</div>

</div>
</div>

</body>
</html>


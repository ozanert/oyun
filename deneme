import random
import rekorlar
print ""
print "####################################"
print "Sicak soguk oyununa hosgeldiniz....."
print "####################################"
print ""


print "(1)Oyna"
print "(2)Nasil oynanir.."
print "(3)Secenekler "
c = 0
while c == 0:
	
	try:
		x = input(" :")
		if x in range(1,4):
			c = 1
		else:
			print "lutfen sadece secenekleri girmeyi deneyiniz."
			c = 0
	except:	
		print "lutfen sadece secenekleri girmeyi deneyiniz."
		
if x == 1:
	pass
if x == 2:
	print ""
	print "1 ile 100 arasinda rastegele secilmis bir sayiyi tahmin etmeye calisin!!"
	print "Denerken ipuclarina dikkat edin size yol gosterecek olanlar onlar"
	print "tahmininizi yazin, bakalim ne kadar sansli ve tutarlisiniz ? :) "
	print ""
if x == 3:
	print "(1) Kayitli rekorlar"
	print "(2) Rekorlari sil"
	c = 0
	while c == 0:	
		try:
			y = input(":")
			if y in range(1,3):
				c = 1
			else:	
				c = 0
				print "lutfen sadece secenekleri girmeyi deneyiniz."
		except:	
			print "lutfen sadece secenekleri girmeyi deneyiniz"
	if y == 1:
		print rekorlar.rekorlar
	if y == 2:
		rekorlar.rekorlar.clear()
		print "rekor kayitlari silindi."	


def oyun():
	print "Oyun Basliyor!!!!!!!!!"
	
	rastgele = random.randrange(1,101)
	
	i = 0
	b = 0
	c = 0
	while b == 0:
		i = i+1
		while c==0:
			try:
				tahmin = input("lutfen tahmininizi giriniz:")
				c=1
			except :
				print "lutfen sadece sayi giriniz"
		c=0	
		if tahmin != rastgele:

			if tahmin > rastgele:
				print "Daha Kucuk!!!"
			if tahmin < rastgele:
				print "Daha Buyuk!!!"
			if tahmin in range(rastgele-5,rastgele+5):
				print "Cok yaklastinn!!"
		else:
			b = 1
			print "Bravo taminin dogru sayi",tahmin,"di."
			print "bu soruyu",i,". kerede bildin!!"
			print "sence rekor sendemi??"
			print ""
			kaydet =raw_input("rekorunu kaydetmek ister misin? (E/H)?")
			if "e" in kaydet:
				isim =raw_input("isminiz: ")
				rekorlar.rekorlar[isim] = i
			print rekorlar.rekorlar
			cevap =raw_input("tekrar oynamak ister misin?(E/H)")
			if "e" in cevap:
				oyun()
oyun()
					
			
		
	

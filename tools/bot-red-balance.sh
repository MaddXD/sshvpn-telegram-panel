#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`mktemp gztmpXXXXX -p /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY��;� f��������������������������������}������P�r�wo���3�� �c����uxU �^�( 6ޤ�4��@}w�{���"$4F	�����#S4ɓF�����L���zjmS�̚����m&�ѩ�zi4�OA���544z�&�HѦL'��CF���i��&�z�����M� #M�i�ѐ�"6SOQ�Si  a�@   h�     a���<��=OS�G�є=SP�� �4=&�~�   @�  �    �        L�CA0AO)���Ȟ���G�di��~��F�z���S����cD�)�h�z  F��� �M=LM� �104�����6��h5����h�3(�b h�� d  h  dڙ4Phh Ѡh �h  0�$�h)馚�MM�����$�6��4�4��4ښ�dщ�2�4�di��4�@i�C@��h  2 �W���5=7]��Cۇ��������>-�� �z���E�%�R���{��^��MqK6oE�%��Ȏ1��G�������3s�����)"�m�������t�9U-X���ע�&S*�oz��5톱�{�yѢ&�����:��@�{Z�DI,̈�
�k[2������S��Z��i�b{+�(��S�Eh��՘;HCB/��ߟ9�k__++�%Yɡ#�V�	�]^*UEh�K*�u΅ځ]F�ˉ�ݽ0!Ad�P7��>������Z��ɪ�p��O��8x�{��U�k�XH-���X�?)d��i􅚧�E��=��z����,[4ei���˒��޷0w���k�L�����c����Hr(@B�eCB�\04x�+���6�HRՠ;B���3U�cq��|/U���s�wz=�邦��Ɲe
��v�	KS>��(�_��TH���Q�b�((�
����i�HBS맣�N�4���%n~̷�JV�ߦG������������#��5�}H'P��ӂ���el���"���&����5ꖚS�⦘�6_�O���o���R]/߄R��baf�m.?E)��jM��.���,Z	de���sr��B"
�;��,�`��a�m���.#7����$Y�,�61LY�K'��aO6����:��u�-F?��I����PZ���!Y���,������^�m8Y�%�-�X  ��� ���A�iK)�$����=�@�2J��(�$�q0�0���:qj@��j��l�C$�W��	��v;?d�Imi
Y�V|��;:�]
Wu���j+<�$�*T���YwByKa	�A���{$�Ai��^;$�G���RGs)�F��I����&�,��1������2����o-�X����LІ��a��C�; Yؐ �/�!v�!���!��@��#9�$��&��%ð��+�-��{<���� �5}�Mn�:I��ߖ���vbm�i$�G#����s=f��&�&U����_&-�fX��
�����`�8�Ҥ�6z�|��6 j�A��#Qg;�}y*��R�vm�����L�0j��\Ri�A\�#65��yl:n�v��-��m�GM��dp4�X���?� F���-�Ȃ1CM�RkY��*b�4��{0�u$�z��#�BY������o�d3W��Q{>,��*���.ߨ��J�����r�!a'�'E��:=��!���x�1�B��TD
�vu�`8�t�	K��������*�Mq4Y�Ғ�G��X���c`�(�K�,�]�o��ag��j:�1�. �A�0I/�!��9?�ȸw��D+B�i�6��cBmnr7��2���yr���c���Д��O������X��X���2V#	���]���2i�nC(�ʎk���(M+s����,�y��7q��w��;d�u[>l"n��cH��&x�٪��cY�W��UsL�ۄ���2�(�v�ۺ(��re�=\ZMR�q����ͮ��+��h�Y��-���J�=�C�U�Ew�������Z�i��ar�Kиy�執�+���jbQ�Tz�c����'��[o[�����F�Z\`oIlJi�Nkw�|s�R�k���V��2*��^� ��xl�N<.��2�jE,�W��]��w-;E.��H�3�����c��G,A��&$�ӗc6��Kd>����*�'G.d�D�EO"��x��Pą�Q�ɼ�1n�I�t��_��l��=&j�N����5'���@��;�즉�P&6����R:0���e��0��z��:o�m�SH�����L%O
Q.XŢP��l042��J�F@�YV�>������J@SCn�)�7�sԥ���5��p{�fI�>�,`F稨�.�CSq������/��̒m�# 0^��~R����pd��!B�=z��Q�9�s��9�s��8� F���f�g�Z�ѣZ���҄���K��W�#�d�Ir��Pw     c-��RiI8>���*��Zx&p�M���,��3�(y1���r+�%C_���]���q�a)�6C�=[����D��q�uX<u��-�d���A�Z�k�
�d��e�+�G,m�{��ۅK[ͮ��o8�+���iI�ۙ�&���,Hv/K�b�T������(l>]��� <i)9*X΄��(�Y�قU�A@��޼�M$�g��+� :����.@tu[4#��[.�D���_-��Z�{���G$�է"����ʳ��qM����dBWw�V�D�D��T�Q�J4\?�/o�즴�e��\O m'��{�@��f<=��{�U��O� T�q�y۾o�ҙ6;�+����4�L���U���y���i<�G�Z
�M���_�k���cI(-N�&�5��[\0�̗/-���z!�Z3y�_��}f&j�^�o;�K� ��fJ�r;�D��ȗ�����f�Kc岟wM8X�%ZU����U�����X�ȝ���y#k�vT��D7�k옥ٕ!��*��_�	6C���,��iG	�
�Nb�f]s�/(�x�0��J����ԯ5.�-�v@���A�`�3��K�P��^��9�U�0�V4E �*文U�2�7*�n��kT�1N�A�_���Q��8B�(¡��탈��Zř��0���<f��w���96]Uj>7�3��Z�l?6�ek����*�g�xH-u!���Wν�֬��U0-Z<'c����z!�p޺<H�v&�9'U��|7��@�G��B���CSO9;mJ���DV���N����Y����(8
8��Nrd���h�p���=�]��O-�������&���z7uԊ�����O�"P�U�ȧy.���-j�$*�'���Ǎ3]mf��}�k��-��hZ��Os=<[�!�T�4�(�h��f�k�Y ��{�V\��Q�5phëY��D�H1F�ˬ�zT�f,��P���K�=Op&��q�`2��U����_lR^�g�?�O�A�%�Z�^�Z�����X�/���V���Vg��Tk�tytg�%�{%vF_�����?}�5���?Fv˴�D����3�h9�
N�z_57���2�֦2}��Z�6>���e���a��_�t�!�;�q��4�Z�(^hh�8B���CllI��\�	�H��Z# ��1{I"y��P! \�?�x6n~7��ҷc�����u�;�M��F''`�}��
�N��%�N~�p2�O������u�Eo�T�|puѠ�2�Ti����_��ď��,ĳܲ���:����9��L�N���_H:���t�#��g�����H�4�.���Bƶ!#8�p]�����|݇?�.%Y��h�fc�ٜ��R�"Q���L0)A ��3��M���%!P1wH�k�d<^�[���.BB�6���$��zP{�LFR����fhpb�G ��4���H xlI+�J�(G�wY���f� �:�����d,]T��������\[�$��K��6����c\�J��5���������.;Fq�nh�/��8�L��={� u�7���k%�.�zk$��W���P���I:��)�8� ��$�,T��e�����^�+���ZAO⩲e �B ���!
1$ ��#iӸxY�����pn0_�>�Z8썄q�Y@ fs��r'���g秮ޯ.C_,#�Ԍ�tv�f��%k�����_("��i���5Z�)�E��05�n��b�HGx�l�UR�o��\#N�k��\����L�&Ƿz3��O�R�xRҦv�yұ�l�ER>$���M(h����WB)���E8�V�f�no�q5�,���C�7���t����t`Rj��B�{��Iz"�Er���/JA��ݍLB
&Դ=���F��V�����8 ��D~�{?�����f���q�����Π��~��	�v�ɭ%��:�:��<�]mK*�u6���F���=�����#��/n �?���}��}��}��f$W���)�Y|�(�4��Mm"6�+*cٜ�^҉[�m>7oVVk�1�|�=�������>IK�_p�����Za����yh�f'3��T,�� P���WJ|;(!����M_�~G�� {L�>x��+��C3�, �D�R��GN���Qc2�mJ�́�� ��y����B0���yyi�gI�Q2��뜍�#�G�P�� �7EJ-M��̻����O�w�ȪV��Zrͭ�\�
H�iI�[�oo�+�&�Ʊu�'��P92���IZy�R1	��/)�Y�L��p�d�sS,4�VŁwN^�5��:f��53�S3\���C)�9�p�8T�¶��ű�Cr��M�t���_t�\�e�2�9aWZڽ������aύ39�'��#���nt4����<�,�r����c}��d`�S�J�x�J*Ks���e�kHuA�iRk�S�F��˪�;�=���g�U����Dُm�*��ԝ���3Uצ��#RT[�[��-PB,�[x#c
�X�2��F��`I��O��q��`����y�4���ua�ՕJ�Ƚ^���qLV(�k�O�u�,�p'��V& N��d�IM{�̅
��?o<�f�,s�CSJ.+�N
M!�}A���#ؓ�r������ ��D�ª7i��F�8��$�bd���@2����D_p�V����0!oV!�O��O���s)K,�fM�+[��?%�i��8m���k�LQW��tD�K�	�1�5Lz��Ms���:�z,-�\:Wv�|z�ZJ:#F�Ǵ4�`A3.�[00&]�|20��n6�7U���b�#�q��sSR��3��/3#��:t�"�f�ѐ�����ZRr��=8~��:)~�O}��p����+,���D�>�bh��)֑W]� ��8�̡��[$*HM�4%R���'�ce���ZQ2�0�җ&V@��9bi�!L# �C�Ybc�8i��h�̳�ǯSl��Q� L�W�h�ml�j9i�$�iV�]2"���[�Y��0�{O�D�|`�� }r�%Q�+����/�L�N��
�,�`csTz� �҇��t�zC�Xa���̪�!� 4I�0E�uF	�¢M��p�����0A���40�A+Z�U"�$�8B�{���;ܠp����&��U��M�j�����3�d�X�����:�/=��� �@�+k�b|wr�	� �(��_��������G���ر9i��\�o׼�cU��hO�:��� 隆ّ] ��`0  �[�8`QG��O9�b��5����@jmb6-�'U���cWG��9F��*o>.ȼ�����~s��Dp��8&��	�FE�(�C/[����,`��`���! ��!~�@PL�X���Nu�u���i�iJ���6u"#�U�J!\W2/+ԧ��U2f���@+g�'!�R�{"eBGXv���:$/���6Iw�sBpV�)�Y�v����ig�L�鉹��7�g���E�)�%��%2�p�NŸi����r;T"�`w���Ijf`i�q�dֆ��`�"�����Rx��4�y�h�>�Rקcq�.I�R���@0y'��Q)g)�<��ظz���tQWEI��,���B#7�pf�*�R�a+O���7*����a�!��>$�H��f��A�r]�GD�ੀ(��m�N��ϯ#�1�5X>n����̓���x�.mn,�t��c%�초8C�YUh2B�!��L�6Ï�#S�j�������]��ȹ(������:[oCqo���v����.��wss+��r��-�����o�6�R���r@��ٴ7�6�4��\�S�ҩA�o������nD!�G�u�2�.T�Aj v�QL�L��EL�(��(��H���f~~�~�Q����GG.��_�})��&z���F�E�J���y��sf�?{�$q��ꎶ�|�#���;�P�L)3*hv�]���0��̥'��|� ��at-�1z��<R��~iT^þ�_b��]E�W7���h�ٝ?��MW4tT��q�?��?%)U�Y�4�­?F��1�A���5�WV$v�C�r*�Պ� �4���l�X& Z���8�c0����	��` �}p����^q�9��Hp��9~ʲ	*2�
{���ط��^D YAtCy,F��YR�Q�h �@�	��a�n��`'��g��,i+��ˤ,N�ͅ���r��涹9�id��D������8zΣ��V��/�4�k_�J�[I3���i�~q$���6��`���V��3z�|�8��Ū��>TvM���y�vI�r�6 j����d�����:y
���{�������T	a�T����g��^�+�Yt�6Gs#3p�/�@�2��x��Ӫf=k�[{D`v(zv��|~�gG�YV�q)۲���-�������C�����F<�zg��b$��uF� .��6ڷ�e����Iz�r�G>-��F�3�$�.�!E7��;�H�=�{��h��0�ڢl Vk)Xe�
��r�fK�L�h���.�|�5%�^���__��Y��5����_Lq�Gk���p����J}�.4�8A���M<��n�<�2�nI���?���g���/�p.l�o��<�-�D�ý@��Z���|��S�-$�F���jHgH�b	䠈gu]%:L�M�0#iye����iJ�+_���Դ�9�!�ƅ����e�
��6��a�����Aӱ$uLH�ޔ��i6�.�΢�!nlCb���Փ#-�^v{�H,y���7��� ��&	/r4�Jh��K��zR4�ܵjpS4umCc"�U�%���R�b[#=�h3U��u�ϭ�9������������O��&21��Y���T,�N,�O<B�M[����En;+:4�)
!(@���:Ic�3����|8�1�`g��.�E���L�Vϥ]ƫ_�^��AΏLZQ�b�t4�@$�]GRS����l-�IsK\���L�d"�����S����K_�ν������5��I� PGU�ɱ�c�����eTG|�3$�kP���+�_iLv�b�\yCT3>�����b9�Y���&���5(�4�ם����HH�����W��;*��IOREd�-Ag��C��%���������uE�f�0�����/KV��'TZ�뒆����
��ç���Ɇ�Q����7Ysb��+�Uc�u:��'�����y��se�#�����m�.�5�ʀ�vZ�E)
�xM�>�z̍V�E����̂C�<#P)J5l�2��l�2���c4��lu���r���\�m��v� ��[ ����c���T1�:����leJ��K��@��@! ��v�t�3��� �d�SM=���<Wt)�	Бq���Z�E��v{�:�*aA��@�
Ne�"�B!! �ܦ����e'5�J�A�b!�M�[���
�_�쿎�_��:��fp�W ��z�a��I�$��ܙ;�ޮ��Пs��,%�L�N�����Z6��^����{�kS����܆�kub�eY�l2�������������g&gF��G���6��H2�BA���m$�cJiUU��Ϻ�\��?���{�q�ر*����h���v�x秅#j�0���i�+��u���{���t�X��$F1�`(���/�P�#V�{��r��q�i��s���٤Z:�<�$�t�ӓ3���ߔ�@ ������a����+�7]��	�% �'`�\@��,�X��\�;�]��}Ɔ���s�J���&���i!�b�Խb�"����WG��J�xGlx]�� ��I�K��pS>��'�s�G,�L���� N�<��L���Lc�
evNؾ=ˆ*bQc��m�rqO( �/<$[��ؒр��ҮĐq�!#��7
������� @�I� @�(fq�x�x�sS+&J8����w��Q����4k!Nn�u��̬��x�.��8B��d Bh���0��*o�)�by��E�-l#&	d�3Slb}�A�_�t��7B��`u
������³�w�ⶻ��{�(uq:̎�r[�A%�^!DR[��Ú��S����ڼe^�V�	*��jOt�u��A��e�!�U�'bԿ��s@՛D�&��8�Dٚ&��<YxA�A���yj/k�o�:��[����Ye�Yie��rE8P���;�
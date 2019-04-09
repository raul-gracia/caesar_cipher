describe CaesarCipher do
  it 'has a version number' do
    expect(CaesarCipher::VERSION).to_not be_nil
  end

  describe '#initialize' do
    it 'with a default shift value' do
      caesar = CaesarCipher::Caesar.new
      expect(caesar.shift).to eq(4)
    end

    it 'with a specific shift value' do
      caesar = CaesarCipher::Caesar.new 6
      expect(caesar.shift).to eq(6)
      caesar = CaesarCipher::Caesar.new 8
      expect(caesar.shift).to eq(8)
      caesar = CaesarCipher::Caesar.new 10
      expect(caesar.shift).to eq(10)
    end
  end

  context '#cipher' do
    context 'without a shift value' do
      context 'a text' do
        it 'with alphabet characters' do
          test_cipher 'my name is raul', 'qc reqi mw veyp'
          test_cipher 'THIS IS A TEST', 'XLMW MW E XIWX'
          test_cipher 'caesar cipher', 'geiwev gmtliv'
        end
        it 'with non alphabet characters' do
          test_cipher 'my_name.is/raul', 'qc_reqi.mw/veyp'
          test_cipher 'MY_NAME.IS/RAUL', 'QC_REQI.MW/VEYP'
        end
      end
    end

    context 'with a different shift value' do
      context 'a text' do
        it 'with alphabet characters' do
          test_cipher 'my name is raul', 'oa pcog ku tcwn', 2
          test_cipher 'THIS IS A TEST', 'YMNX NX F YJXY', 5
          test_cipher 'caesar cipher', 'kimaiz kqxpmz', 8
        end
        it 'with non alphabet characters' do
          test_cipher 'my_name.is/raul', 'oa_pcog.ku/tcwn', 2
          test_cipher 'MY_NAME.IS/RAUL', 'UG_VIUM.QA/ZICT', 8
        end
      end
    end
  end

  context '#decipher' do
    context 'without a shift value' do
      context 'a text' do
        it 'with alphabet characters' do
          test_decipher 'my name is raul', 'qc reqi mw veyp'
          test_decipher 'THIS IS A TEST', 'XLMW MW E XIWX'
          test_decipher 'caesar cipher', 'geiwev gmtliv'
        end
        it 'with non alphabet characters' do
          test_decipher 'my_name.is/raul', 'qc_reqi.mw/veyp'
          test_decipher 'MY_NAME.IS/RAUL', 'QC_REQI.MW/VEYP'
        end
      end
    end

    context 'with a different shift value' do
      context 'a text' do
        it 'with alphabet characters' do
          test_decipher 'my name is raul', 'oa pcog ku tcwn', 2
          test_decipher 'THIS IS A TEST', 'YMNX NX F YJXY', 5
          test_decipher 'caesar cipher', 'kimaiz kqxpmz', 8
        end
        it 'with non alphabet characters' do
          test_decipher 'my_name.is/raul', 'oa_pcog.ku/tcwn', 2
          test_decipher 'MY_NAME.IS/RAUL', 'UG_VIUM.QA/ZICT', 8
        end
      end
    end
  end
end

def test_cipher(text, text_chipered, shift = nil)
  caesar = if shift.nil?
             CaesarCipher::Caesar.new
           else
             CaesarCipher::Caesar.new shift
           end
  output = caesar.cipher text
  expect(output).to eq(text_chipered)
end

def test_decipher(text, text_chipered, shift = nil)
  caesar = if shift.nil?
             CaesarCipher::Caesar.new
           else
             CaesarCipher::Caesar.new shift
           end
  output = caesar.decipher text_chipered
  expect(output).to eq(text)
end

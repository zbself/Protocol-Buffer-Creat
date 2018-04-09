package  {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class OP_C_AUTH_SESSION extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ACCOUNT:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("OP_C_AUTH_SESSION.account", "account", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var account:String;

		/**
		 *  @private
		 */
		public static const PASSWORD:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("OP_C_AUTH_SESSION.password", "password", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var password:String;

		/**
		 *  @private
		 */
		public static const OTHERPARAM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("OP_C_AUTH_SESSION.otherParam", "otherParam", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var otherParam$field:int;

		private var hasField$0:uint = 0;

		public function clearOtherParam():void {
			hasField$0 &= 0xfffffffe;
			otherParam$field = new int();
		}

		public function get hasOtherParam():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set otherParam(value:int):void {
			hasField$0 |= 0x1;
			otherParam$field = value;
		}

		public function get otherParam():int {
			if(!hasOtherParam) {
				return 0;
			}
			return otherParam$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.account);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.password);
			if (hasOtherParam) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, otherParam$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var account$count:uint = 0;
			var password$count:uint = 0;
			var otherParam$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (account$count != 0) {
						throw new flash.errors.IOError('Bad data format: OP_C_AUTH_SESSION.account cannot be set twice.');
					}
					++account$count;
					this.account = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 2:
					if (password$count != 0) {
						throw new flash.errors.IOError('Bad data format: OP_C_AUTH_SESSION.password cannot be set twice.');
					}
					++password$count;
					this.password = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (otherParam$count != 0) {
						throw new flash.errors.IOError('Bad data format: OP_C_AUTH_SESSION.otherParam cannot be set twice.');
					}
					++otherParam$count;
					this.otherParam = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}

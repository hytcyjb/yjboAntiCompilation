.class public interface abstract Lcom/avos/avoscloud/okio/BufferedSink;
.super Ljava/lang/Object;
.source "BufferedSink.java"

# interfaces
.implements Lcom/avos/avoscloud/okio/Sink;


# virtual methods
.method public abstract buffer()Lcom/avos/avoscloud/okio/Buffer;
.end method

.method public abstract emit()Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract outputStream()Ljava/io/OutputStream;
.end method

.method public abstract write(Lcom/avos/avoscloud/okio/ByteString;)Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract write(Lcom/avos/avoscloud/okio/Source;J)Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract write([B)Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract write([BII)Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract writeAll(Lcom/avos/avoscloud/okio/Source;)J
.end method

.method public abstract writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract writeDecimalLong(J)Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract writeHexadecimalUnsignedLong(J)Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract writeInt(I)Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract writeIntLe(I)Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract writeLong(J)Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract writeLongLe(J)Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract writeShort(I)Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract writeShortLe(I)Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract writeUtf8(Ljava/lang/String;II)Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract writeUtf8CodePoint(I)Lcom/avos/avoscloud/okio/BufferedSink;
.end method

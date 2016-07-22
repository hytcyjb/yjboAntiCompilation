.class public Lcom/avos/avoscloud/java_websocket/util/Charsetfunctions;
.super Ljava/lang/Object;
.source "Charsetfunctions.java"


# static fields
.field public static codingErrorAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    sput-object v0, Lcom/avos/avoscloud/java_websocket/util/Charsetfunctions;->codingErrorAction:Ljava/nio/charset/CodingErrorAction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asciiBytes(Ljava/lang/String;)[B
    .locals 2
    .parameter

    .prologue
    .line 33
    :try_start_0
    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    const-string v0, "\u0000"

    invoke-static {v0}, Lcom/avos/avoscloud/java_websocket/util/Charsetfunctions;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/java_websocket/util/Charsetfunctions;->stringUtf8([B)Ljava/lang/String;

    .line 87
    const-string v0, "\u0000"

    invoke-static {v0}, Lcom/avos/avoscloud/java_websocket/util/Charsetfunctions;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/java_websocket/util/Charsetfunctions;->stringAscii([B)Ljava/lang/String;

    .line 88
    return-void
.end method

.method public static stringAscii([B)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/java_websocket/util/Charsetfunctions;->stringAscii([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringAscii([BII)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ASCII"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 70
    const-string v0, "UTF8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 71
    sget-object v1, Lcom/avos/avoscloud/java_websocket/util/Charsetfunctions;->codingErrorAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 72
    sget-object v1, Lcom/avos/avoscloud/java_websocket/util/Charsetfunctions;->codingErrorAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 76
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 77
    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidDataException;

    const/16 v2, 0x3ef

    invoke-direct {v1, v2, v0}, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

.method public static stringUtf8([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/java_websocket/util/Charsetfunctions;->stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static utf8Bytes(Ljava/lang/String;)[B
    .locals 2
    .parameter

    .prologue
    .line 22
    :try_start_0
    const-string v0, "UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

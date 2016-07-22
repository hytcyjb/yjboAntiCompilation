.class public Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;
.super Lcom/avos/avoscloud/java_websocket/drafts/Draft;
.source "Draft_10.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/java_websocket/drafts/Draft_10$IncompleteException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private fragmentedframe:Lcom/avos/avoscloud/java_websocket/framing/Framedata;

.field private incompleteframe:Ljava/nio/ByteBuffer;

.field private final reuseableRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/avos/avoscloud/java_websocket/drafts/Draft;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->fragmentedframe:Lcom/avos/avoscloud/java_websocket/framing/Framedata;

    .line 66
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->reuseableRandom:Ljava/util/Random;

    return-void
.end method

.method private fromOpcode(Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;)B
    .locals 3
    .parameter

    .prologue
    .line 160
    sget-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    .line 162
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->TEXT:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_1

    .line 163
    const/4 v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->BINARY:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_2

    .line 165
    const/4 v0, 0x2

    goto :goto_0

    .line 166
    :cond_2
    sget-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->CLOSING:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_3

    .line 167
    const/16 v0, 0x8

    goto :goto_0

    .line 168
    :cond_3
    sget-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->PING:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_4

    .line 169
    const/16 v0, 0x9

    goto :goto_0

    .line 170
    :cond_4
    sget-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->PONG:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_5

    .line 171
    const/16 v0, 0xa

    goto :goto_0

    .line 172
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateFinalKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    :try_start_0
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/java_websocket/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readVersion(Lcom/avos/avoscloud/java_websocket/handshake/Handshakedata;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 50
    const-string v1, "Sec-WebSocket-Version"

    invoke-interface {p0, v1}, Lcom/avos/avoscloud/java_websocket/handshake/Handshakedata;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 54
    :try_start_0
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 56
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private toByteArray(JI)[B
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 213
    new-array v1, p3, [B

    .line 214
    mul-int/lit8 v0, p3, 0x8

    add-int/lit8 v2, v0, -0x8

    .line 215
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 216
    mul-int/lit8 v3, v0, 0x8

    sub-int v3, v2, v3

    ushr-long v4, p1, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    return-object v1
.end method

.method private toOpcode(B)Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;
    .locals 3
    .parameter

    .prologue
    .line 222
    packed-switch p1, :pswitch_data_0

    .line 238
    :pswitch_0
    new-instance v0, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknow optcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-short v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :pswitch_1
    sget-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    .line 235
    :goto_0
    return-object v0

    .line 226
    :pswitch_2
    sget-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->TEXT:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    goto :goto_0

    .line 228
    :pswitch_3
    sget-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->BINARY:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    goto :goto_0

    .line 231
    :pswitch_4
    sget-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->CLOSING:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    goto :goto_0

    .line 233
    :pswitch_5
    sget-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->PING:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    goto :goto_0

    .line 235
    :pswitch_6
    sget-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->PONG:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public acceptHandshakeAsClient(Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshake;)Lcom/avos/avoscloud/java_websocket/drafts/Draft$HandshakeState;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    const-string v0, "Sec-WebSocket-Key"

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;->hasFieldValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sec-WebSocket-Accept"

    invoke-interface {p2, v0}, Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshake;->hasFieldValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/avos/avoscloud/java_websocket/drafts/Draft$HandshakeState;

    .line 79
    :goto_0
    return-object v0

    .line 73
    :cond_1
    const-string v0, "Sec-WebSocket-Accept"

    invoke-interface {p2, v0}, Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "Sec-WebSocket-Key"

    invoke-interface {p1, v1}, Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-direct {p0, v1}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->generateFinalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    sget-object v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lcom/avos/avoscloud/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0

    .line 79
    :cond_2
    sget-object v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/avos/avoscloud/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0
.end method

.method public acceptHandshakeAsServer(Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;)Lcom/avos/avoscloud/java_websocket/drafts/Draft$HandshakeState;
    .locals 2
    .parameter

    .prologue
    .line 85
    invoke-static {p1}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->readVersion(Lcom/avos/avoscloud/java_websocket/handshake/Handshakedata;)I

    move-result v0

    .line 86
    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->basicAccept(Lcom/avos/avoscloud/java_websocket/handshake/Handshakedata;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lcom/avos/avoscloud/java_websocket/drafts/Draft$HandshakeState;

    .line 88
    :goto_0
    return-object v0

    .line 87
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/avos/avoscloud/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0

    .line 88
    :cond_2
    sget-object v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/avos/avoscloud/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0
.end method

.method public copyInstance()Lcom/avos/avoscloud/java_websocket/drafts/Draft;
    .locals 1

    .prologue
    .line 390
    new-instance v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;

    invoke-direct {v0}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;-><init>()V

    return-object v0
.end method

.method public createBinaryFrame(Lcom/avos/avoscloud/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;
    .locals 12
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/16 v5, -0x80

    const/4 v2, 0x0

    .line 93
    invoke-interface {p1}, Lcom/avos/avoscloud/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 94
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->role:Lcom/avos/avoscloud/java_websocket/WebSocket$Role;

    sget-object v3, Lcom/avos/avoscloud/java_websocket/WebSocket$Role;->CLIENT:Lcom/avos/avoscloud/java_websocket/WebSocket$Role;

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 95
    :goto_0
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v6, 0x7d

    if-gt v3, v6, :cond_1

    move v6, v1

    .line 96
    :goto_1
    if-le v6, v1, :cond_3

    add-int/lit8 v3, v6, 0x1

    :goto_2
    add-int/lit8 v9, v3, 0x1

    if-eqz v0, :cond_4

    move v3, v4

    :goto_3
    add-int/2addr v3, v9

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    add-int/2addr v3, v9

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 97
    invoke-interface {p1}, Lcom/avos/avoscloud/java_websocket/framing/Framedata;->getOpcode()Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->fromOpcode(Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;)B

    move-result v10

    .line 98
    invoke-interface {p1}, Lcom/avos/avoscloud/java_websocket/framing/Framedata;->isFin()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v5

    :goto_4
    int-to-byte v3, v3

    .line 99
    or-int/2addr v3, v10

    int-to-byte v3, v3

    .line 100
    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    int-to-long v10, v3

    invoke-direct {p0, v10, v11, v6}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->toByteArray(JI)[B

    move-result-object v3

    .line 102
    sget-boolean v10, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->$assertionsDisabled:Z

    if-nez v10, :cond_6

    array-length v10, v3

    if-eq v10, v6, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v2

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const v6, 0xffff

    if-gt v3, v6, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    const/16 v6, 0x8

    goto :goto_1

    :cond_3
    move v3, v6

    .line 96
    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v2

    .line 98
    goto :goto_4

    .line 104
    :cond_6
    if-ne v6, v1, :cond_8

    .line 105
    aget-byte v1, v3, v2

    if-eqz v0, :cond_7

    :goto_5
    or-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 115
    :goto_6
    if-eqz v0, :cond_d

    .line 116
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->reuseableRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 119
    :goto_7
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 120
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    rem-int/lit8 v3, v2, 0x4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    move v5, v2

    .line 105
    goto :goto_5

    .line 106
    :cond_8
    if-ne v6, v7, :cond_a

    .line 107
    if-eqz v0, :cond_9

    :goto_8
    or-int/lit8 v1, v5, 0x7e

    int-to-byte v1, v1

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 108
    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_9
    move v5, v2

    .line 107
    goto :goto_8

    .line 109
    :cond_a
    const/16 v1, 0x8

    if-ne v6, v1, :cond_c

    .line 110
    if-eqz v0, :cond_b

    :goto_9
    or-int/lit8 v1, v5, 0x7f

    int-to-byte v1, v1

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 111
    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_b
    move v5, v2

    .line 110
    goto :goto_9

    .line 113
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Size representation not supported/specified"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_d
    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 125
    :cond_e
    sget-boolean v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 126
    :cond_f
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 128
    return-object v9
.end method

.method public createFrames(Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;

    invoke-direct {v0}, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;-><init>()V

    .line 149
    :try_start_0
    invoke-static {p1}, Lcom/avos/avoscloud/java_websocket/util/Charsetfunctions;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/java_websocket/framing/FrameBuilder;->setPayload(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lcom/avos/avoscloud/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/java_websocket/framing/FrameBuilder;->setFin(Z)V

    .line 154
    sget-object v1, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->TEXT:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/java_websocket/framing/FrameBuilder;->setOptcode(Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;)V

    .line 155
    invoke-interface {v0, p2}, Lcom/avos/avoscloud/java_websocket/framing/FrameBuilder;->setTransferemasked(Z)V

    .line 156
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Lcom/avos/avoscloud/java_websocket/exceptions/NotSendableException;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/java_websocket/exceptions/NotSendableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;

    invoke-direct {v0}, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;-><init>()V

    .line 135
    :try_start_0
    invoke-interface {v0, p1}, Lcom/avos/avoscloud/java_websocket/framing/FrameBuilder;->setPayload(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lcom/avos/avoscloud/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/java_websocket/framing/FrameBuilder;->setFin(Z)V

    .line 140
    sget-object v1, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->BINARY:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/java_websocket/framing/FrameBuilder;->setOptcode(Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;)V

    .line 141
    invoke-interface {v0, p2}, Lcom/avos/avoscloud/java_websocket/framing/FrameBuilder;->setTransferemasked(Z)V

    .line 142
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    new-instance v1, Lcom/avos/avoscloud/java_websocket/exceptions/NotSendableException;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/java_websocket/exceptions/NotSendableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCloseHandshakeType()Lcom/avos/avoscloud/java_websocket/drafts/Draft$CloseHandshakeType;
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft$CloseHandshakeType;->TWOWAY:Lcom/avos/avoscloud/java_websocket/drafts/Draft$CloseHandshakeType;

    return-object v0
.end method

.method public postProcessHandshakeRequestAsClient(Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshakeBuilder;)Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshakeBuilder;
    .locals 2
    .parameter

    .prologue
    .line 189
    const-string v0, "Upgrade"

    const-string v1, "websocket"

    invoke-interface {p1, v0, v1}, Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "Connection"

    const-string v1, "Upgrade"

    invoke-interface {p1, v0, v1}, Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "Sec-WebSocket-Version"

    const-string v1, "8"

    invoke-interface {p1, v0, v1}, Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 194
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->reuseableRandom:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 195
    const-string v1, "Sec-WebSocket-Key"

    invoke-static {v0}, Lcom/avos/avoscloud/java_websocket/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-object p1
.end method

.method public postProcessHandshakeResponseAsServer(Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshakeBuilder;)Lcom/avos/avoscloud/java_websocket/handshake/HandshakeBuilder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 202
    const-string v0, "Upgrade"

    const-string v1, "websocket"

    invoke-interface {p2, v0, v1}, Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v0, "Connection"

    const-string v1, "Connection"

    invoke-interface {p1, v1}, Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v0, "Switching Protocols"

    invoke-interface {p2, v0}, Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshakeBuilder;->setHttpStatusMessage(Ljava/lang/String;)V

    .line 205
    const-string v0, "Sec-WebSocket-Key"

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidHandshakeException;

    const-string v1, "missing Sec-WebSocket-Key"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    const-string v1, "Sec-WebSocket-Accept"

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->generateFinalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-object p2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    .line 386
    return-void
.end method

.method public translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 247
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 251
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 252
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 253
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 255
    if-le v2, v0, :cond_0

    .line 257
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 258
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v0, v3, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 262
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 264
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->translateSingleFrame(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/java_websocket/framing/Framedata;

    move-result-object v0

    .line 265
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Lcom/avos/avoscloud/java_websocket/drafts/Draft_10$IncompleteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 285
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->translateSingleFrame(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/java_websocket/framing/Framedata;

    move-result-object v0

    .line 286
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/avos/avoscloud/java_websocket/drafts/Draft_10$IncompleteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 287
    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 290
    invoke-virtual {v0}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10$IncompleteException;->getPreferedSize()I

    move-result v0

    .line 291
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->checkAlloc(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    .line 292
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    move-object v0, v1

    .line 296
    goto :goto_0

    .line 268
    :catch_1
    move-exception v0

    .line 270
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    .line 271
    invoke-virtual {v0}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10$IncompleteException;->getPreferedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->checkAlloc(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 272
    sget-boolean v1, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-gt v1, v2, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 273
    :cond_3
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 274
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 275
    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    .line 277
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public translateSingleFrame(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/java_websocket/framing/Framedata;
    .locals 14
    .parameter

    .prologue
    const/16 v10, 0x8

    const/4 v5, 0x2

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 300
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 302
    if-ge v7, v5, :cond_0

    .line 303
    new-instance v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10$IncompleteException;

    invoke-direct {v0, p0, v5}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10$IncompleteException;-><init>(Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;I)V

    throw v0

    .line 304
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 305
    shr-int/lit8 v0, v8, 0x8

    if-eqz v0, :cond_1

    move v6, v1

    .line 306
    :goto_0
    and-int/lit8 v0, v8, 0x7f

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 307
    if-eqz v0, :cond_2

    .line 308
    new-instance v1, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad rsv "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move v6, v2

    .line 305
    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 310
    and-int/lit8 v0, v4, -0x80

    if-eqz v0, :cond_4

    move v0, v1

    .line 311
    :goto_1
    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    .line 312
    and-int/lit8 v8, v8, 0xf

    int-to-byte v8, v8

    invoke-direct {p0, v8}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->toOpcode(B)Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    move-result-object v8

    .line 314
    if-nez v6, :cond_5

    .line 315
    sget-object v9, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->PING:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    if-eq v8, v9, :cond_3

    sget-object v9, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->PONG:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    if-eq v8, v9, :cond_3

    sget-object v9, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->CLOSING:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    if-ne v8, v9, :cond_5

    .line 316
    :cond_3
    new-instance v0, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidFrameException;

    const-string v1, "control frames may no be fragmented"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v2

    .line 310
    goto :goto_1

    .line 320
    :cond_5
    if-ltz v4, :cond_6

    const/16 v9, 0x7d

    if-gt v4, v9, :cond_6

    .line 351
    :goto_2
    if-eqz v0, :cond_e

    move v1, v3

    :goto_3
    add-int/2addr v1, v5

    .line 353
    add-int/2addr v1, v4

    .line 355
    if-ge v7, v1, :cond_f

    .line 356
    new-instance v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10$IncompleteException;

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10$IncompleteException;-><init>(Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;I)V

    throw v0

    .line 322
    :cond_6
    sget-object v9, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->PING:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    if-eq v8, v9, :cond_7

    sget-object v9, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->PONG:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    if-eq v8, v9, :cond_7

    sget-object v9, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->CLOSING:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    if-ne v8, v9, :cond_8

    .line 323
    :cond_7
    new-instance v0, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidFrameException;

    const-string v1, "more than 125 octets"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_8
    const/16 v9, 0x7e

    if-ne v4, v9, :cond_a

    .line 327
    if-ge v7, v3, :cond_9

    .line 328
    new-instance v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10$IncompleteException;

    invoke-direct {v0, p0, v3}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10$IncompleteException;-><init>(Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;I)V

    throw v0

    .line 329
    :cond_9
    const/4 v4, 0x3

    new-array v4, v4, [B

    .line 330
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    aput-byte v9, v4, v1

    .line 331
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    aput-byte v1, v4, v5

    .line 332
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    move v4, v1

    move v5, v3

    .line 333
    goto :goto_2

    .line 334
    :cond_a
    const/16 v4, 0xa

    .line 335
    if-ge v7, v4, :cond_b

    .line 336
    new-instance v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10$IncompleteException;

    invoke-direct {v0, p0, v4}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10$IncompleteException;-><init>(Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;I)V

    throw v0

    .line 337
    :cond_b
    new-array v5, v10, [B

    move v1, v2

    .line 338
    :goto_4
    if-ge v1, v10, :cond_c

    .line 339
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    aput-byte v9, v5, v1

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 341
    :cond_c
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    .line 342
    const-wide/32 v12, 0x7fffffff

    cmp-long v1, v10, v12

    if-lez v1, :cond_d

    .line 343
    new-instance v0, Lcom/avos/avoscloud/java_websocket/exceptions/LimitExedeedException;

    const-string v1, "Payloadsize is to big..."

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/java_websocket/exceptions/LimitExedeedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_d
    long-to-int v1, v10

    move v5, v4

    move v4, v1

    goto :goto_2

    :cond_e
    move v1, v2

    .line 351
    goto :goto_3

    .line 358
    :cond_f
    invoke-virtual {p0, v4}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;->checkAlloc(I)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 359
    if-eqz v0, :cond_10

    .line 360
    new-array v0, v3, [B

    .line 361
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 362
    :goto_5
    if-ge v2, v4, :cond_11

    .line 363
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    rem-int/lit8 v5, v2, 0x4

    aget-byte v5, v0, v5

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 366
    :cond_10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 367
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 371
    :cond_11
    sget-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->CLOSING:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    if-ne v8, v0, :cond_12

    .line 372
    new-instance v0, Lcom/avos/avoscloud/java_websocket/framing/CloseFrameBuilder;

    invoke-direct {v0}, Lcom/avos/avoscloud/java_websocket/framing/CloseFrameBuilder;-><init>()V

    .line 378
    :goto_6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 379
    invoke-interface {v0, v1}, Lcom/avos/avoscloud/java_websocket/framing/FrameBuilder;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 380
    return-object v0

    .line 374
    :cond_12
    new-instance v0, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;

    invoke-direct {v0}, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;-><init>()V

    .line 375
    invoke-interface {v0, v6}, Lcom/avos/avoscloud/java_websocket/framing/FrameBuilder;->setFin(Z)V

    .line 376
    invoke-interface {v0, v8}, Lcom/avos/avoscloud/java_websocket/framing/FrameBuilder;->setOptcode(Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;)V

    goto :goto_6
.end method

.class public abstract Lcom/avos/avoscloud/java_websocket/drafts/Draft;
.super Ljava/lang/Object;
.source "Draft.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/java_websocket/drafts/Draft$CloseHandshakeType;,
        Lcom/avos/avoscloud/java_websocket/drafts/Draft$HandshakeState;
    }
.end annotation


# static fields
.field public static final FLASH_POLICY_REQUEST:[B

.field public static INITIAL_FAMESIZE:I

.field public static MAX_FAME_SIZE:I


# instance fields
.field protected continuousFrameType:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

.field protected role:Lcom/avos/avoscloud/java_websocket/WebSocket$Role;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x3e8

    sput v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->MAX_FAME_SIZE:I

    .line 44
    const/16 v0, 0x40

    sput v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->INITIAL_FAMESIZE:I

    .line 46
    const-string v0, "<policy-file-request/>\u0000"

    invoke-static {v0}, Lcom/avos/avoscloud/java_websocket/util/Charsetfunctions;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->FLASH_POLICY_REQUEST:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->role:Lcom/avos/avoscloud/java_websocket/WebSocket$Role;

    .line 51
    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->continuousFrameType:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    return-void
.end method

.method public static readLine(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 56
    const/16 v0, 0x30

    .line 57
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 60
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 61
    const/16 v3, 0xd

    if-ne v0, v3, :cond_1

    const/16 v0, 0xa

    if-ne v1, v0, :cond_1

    .line 62
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 63
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v0, v2

    .line 70
    :goto_1
    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 74
    invoke-static {p0}, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->readLine(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 75
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/avos/avoscloud/java_websocket/util/Charsetfunctions;->stringAscii([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static translateHandshakeHttp(Ljava/nio/ByteBuffer;Lcom/avos/avoscloud/java_websocket/WebSocket$Role;)Lcom/avos/avoscloud/java_websocket/handshake/HandshakeBuilder;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 81
    invoke-static {p0}, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 82
    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/avos/avoscloud/java_websocket/exceptions/IncompleteHandshakeException;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/lit16 v1, v1, 0x80

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/java_websocket/exceptions/IncompleteHandshakeException;-><init>(I)V

    throw v0

    .line 85
    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 86
    array-length v0, v2

    if-eq v0, v3, :cond_1

    .line 87
    new-instance v0, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidHandshakeException;

    invoke-direct {v0}, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidHandshakeException;-><init>()V

    throw v0

    .line 90
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/java_websocket/WebSocket$Role;->CLIENT:Lcom/avos/avoscloud/java_websocket/WebSocket$Role;

    if-ne p1, v0, :cond_2

    .line 92
    new-instance v1, Lcom/avos/avoscloud/java_websocket/handshake/HandshakeImpl1Server;

    invoke-direct {v1}, Lcom/avos/avoscloud/java_websocket/handshake/HandshakeImpl1Server;-><init>()V

    move-object v0, v1

    .line 93
    check-cast v0, Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshakeBuilder;

    .line 94
    aget-object v3, v2, v5

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    invoke-interface {v0, v3}, Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshakeBuilder;->setHttpStatus(S)V

    .line 95
    aget-object v2, v2, v6

    invoke-interface {v0, v2}, Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshakeBuilder;->setHttpStatusMessage(Ljava/lang/String;)V

    .line 103
    :goto_0
    invoke-static {p0}, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 105
    const-string v2, ":"

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 106
    array-length v2, v0

    if-eq v2, v6, :cond_3

    .line 107
    new-instance v0, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidHandshakeException;

    const-string v1, "not an http header"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_2
    new-instance v1, Lcom/avos/avoscloud/java_websocket/handshake/HandshakeImpl1Client;

    invoke-direct {v1}, Lcom/avos/avoscloud/java_websocket/handshake/HandshakeImpl1Client;-><init>()V

    .line 99
    aget-object v0, v2, v5

    invoke-interface {v1, v0}, Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshakeBuilder;->setResourceDescriptor(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_3
    const/4 v2, 0x0

    aget-object v2, v0, v2

    aget-object v0, v0, v5

    const-string v3, "^ +"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/avos/avoscloud/java_websocket/handshake/HandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {p0}, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 111
    :cond_4
    if-nez v0, :cond_5

    .line 112
    new-instance v0, Lcom/avos/avoscloud/java_websocket/exceptions/IncompleteHandshakeException;

    invoke-direct {v0}, Lcom/avos/avoscloud/java_websocket/exceptions/IncompleteHandshakeException;-><init>()V

    throw v0

    .line 113
    :cond_5
    return-object v1
.end method


# virtual methods
.method public abstract acceptHandshakeAsClient(Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshake;)Lcom/avos/avoscloud/java_websocket/drafts/Draft$HandshakeState;
.end method

.method public abstract acceptHandshakeAsServer(Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;)Lcom/avos/avoscloud/java_websocket/drafts/Draft$HandshakeState;
.end method

.method protected basicAccept(Lcom/avos/avoscloud/java_websocket/handshake/Handshakedata;)Z
    .locals 2
    .parameter

    .prologue
    .line 121
    const-string v0, "Upgrade"

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/java_websocket/handshake/Handshakedata;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connection"

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/java_websocket/handshake/Handshakedata;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAlloc(I)I
    .locals 3
    .parameter

    .prologue
    .line 214
    if-gez p1, :cond_0

    .line 215
    new-instance v0, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidDataException;

    const/16 v1, 0x3ea

    const-string v2, "Negative count"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    return p1
.end method

.method public continuousFrame(Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    sget-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->BINARY:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->TEXT:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->TEXT:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    if-eq p1, v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only Opcode.BINARY or  Opcode.TEXT are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->continuousFrameType:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    if-eqz v0, :cond_1

    .line 136
    sget-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->continuousFrameType:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    .line 141
    :goto_0
    new-instance v0, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;

    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->continuousFrameType:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;-><init>(Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;)V

    .line 143
    :try_start_0
    invoke-interface {v0, p2}, Lcom/avos/avoscloud/java_websocket/framing/FrameBuilder;->setPayload(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lcom/avos/avoscloud/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    invoke-interface {v0, p3}, Lcom/avos/avoscloud/java_websocket/framing/FrameBuilder;->setFin(Z)V

    .line 148
    if-eqz p3, :cond_2

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->continuousFrameType:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    .line 153
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 138
    :cond_1
    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->continuousFrameType:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 151
    :cond_2
    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->continuousFrameType:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    goto :goto_1
.end method

.method public abstract copyInstance()Lcom/avos/avoscloud/java_websocket/drafts/Draft;
.end method

.method public abstract createBinaryFrame(Lcom/avos/avoscloud/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;
.end method

.method public abstract createFrames(Ljava/lang/String;Z)Ljava/util/List;
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
.end method

.method public abstract createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
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
.end method

.method public createHandshake(Lcom/avos/avoscloud/java_websocket/handshake/Handshakedata;Lcom/avos/avoscloud/java_websocket/WebSocket$Role;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/java_websocket/handshake/Handshakedata;",
            "Lcom/avos/avoscloud/java_websocket/WebSocket$Role;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->createHandshake(Lcom/avos/avoscloud/java_websocket/handshake/Handshakedata;Lcom/avos/avoscloud/java_websocket/WebSocket$Role;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createHandshake(Lcom/avos/avoscloud/java_websocket/handshake/Handshakedata;Lcom/avos/avoscloud/java_websocket/WebSocket$Role;Z)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/java_websocket/handshake/Handshakedata;",
            "Lcom/avos/avoscloud/java_websocket/WebSocket$Role;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 164
    instance-of v0, p1, Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "GET "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    .line 166
    check-cast v0, Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;

    invoke-interface {v0}, Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;->getResourceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :goto_0
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-interface {p1}, Lcom/avos/avoscloud/java_websocket/handshake/Handshakedata;->iterateHttpFields()Ljava/util/Iterator;

    move-result-object v2

    .line 175
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    invoke-interface {p1, v0}, Lcom/avos/avoscloud/java_websocket/handshake/Handshakedata;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 168
    :cond_0
    instance-of v0, p1, Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshake;

    if-eqz v0, :cond_1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP/1.1 101 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshake;

    invoke-interface {v0}, Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshake;->getHttpStatusMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 171
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unknow role"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_2
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/java_websocket/util/Charsetfunctions;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 186
    if-eqz p3, :cond_4

    invoke-interface {p1}, Lcom/avos/avoscloud/java_websocket/handshake/Handshakedata;->getContent()[B

    move-result-object v0

    move-object v1, v0

    .line 187
    :goto_2
    if-nez v1, :cond_5

    const/4 v0, 0x0

    :goto_3
    array-length v3, v2

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 189
    if-eqz v1, :cond_3

    .line 190
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 191
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 192
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 186
    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_2

    .line 187
    :cond_5
    array-length v0, v1

    goto :goto_3
.end method

.method public abstract getCloseHandshakeType()Lcom/avos/avoscloud/java_websocket/drafts/Draft$CloseHandshakeType;
.end method

.method public getRole()Lcom/avos/avoscloud/java_websocket/WebSocket$Role;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->role:Lcom/avos/avoscloud/java_websocket/WebSocket$Role;

    return-object v0
.end method

.method public abstract postProcessHandshakeRequestAsClient(Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshakeBuilder;)Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshakeBuilder;
.end method

.method public abstract postProcessHandshakeResponseAsServer(Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshakeBuilder;)Lcom/avos/avoscloud/java_websocket/handshake/HandshakeBuilder;
.end method

.method public abstract reset()V
.end method

.method public setParseMode(Lcom/avos/avoscloud/java_websocket/WebSocket$Role;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->role:Lcom/avos/avoscloud/java_websocket/WebSocket$Role;

    .line 221
    return-void
.end method

.method public abstract translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;
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
.end method

.method public translateHandshake(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/java_websocket/handshake/Handshakedata;
    .locals 1
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->role:Lcom/avos/avoscloud/java_websocket/WebSocket$Role;

    invoke-static {p1, v0}, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->translateHandshakeHttp(Ljava/nio/ByteBuffer;Lcom/avos/avoscloud/java_websocket/WebSocket$Role;)Lcom/avos/avoscloud/java_websocket/handshake/HandshakeBuilder;

    move-result-object v0

    return-object v0
.end method

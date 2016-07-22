.class public final Lcom/avos/avoscloud/okhttp/internal/framed/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final RESPONSE_STATUS:Lcom/avos/avoscloud/okio/ByteString;

.field public static final TARGET_AUTHORITY:Lcom/avos/avoscloud/okio/ByteString;

.field public static final TARGET_HOST:Lcom/avos/avoscloud/okio/ByteString;

.field public static final TARGET_METHOD:Lcom/avos/avoscloud/okio/ByteString;

.field public static final TARGET_PATH:Lcom/avos/avoscloud/okio/ByteString;

.field public static final TARGET_SCHEME:Lcom/avos/avoscloud/okio/ByteString;

.field public static final VERSION:Lcom/avos/avoscloud/okio/ByteString;


# instance fields
.field final hpackSize:I

.field public final name:Lcom/avos/avoscloud/okio/ByteString;

.field public final value:Lcom/avos/avoscloud/okio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, ":status"

    invoke-static {v0}, Lcom/avos/avoscloud/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lcom/avos/avoscloud/okio/ByteString;

    .line 9
    const-string v0, ":method"

    invoke-static {v0}, Lcom/avos/avoscloud/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->TARGET_METHOD:Lcom/avos/avoscloud/okio/ByteString;

    .line 10
    const-string v0, ":path"

    invoke-static {v0}, Lcom/avos/avoscloud/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->TARGET_PATH:Lcom/avos/avoscloud/okio/ByteString;

    .line 11
    const-string v0, ":scheme"

    invoke-static {v0}, Lcom/avos/avoscloud/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->TARGET_SCHEME:Lcom/avos/avoscloud/okio/ByteString;

    .line 12
    const-string v0, ":authority"

    invoke-static {v0}, Lcom/avos/avoscloud/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lcom/avos/avoscloud/okio/ByteString;

    .line 13
    const-string v0, ":host"

    invoke-static {v0}, Lcom/avos/avoscloud/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->TARGET_HOST:Lcom/avos/avoscloud/okio/ByteString;

    .line 14
    const-string v0, ":version"

    invoke-static {v0}, Lcom/avos/avoscloud/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->VERSION:Lcom/avos/avoscloud/okio/ByteString;

    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/okio/ByteString;Lcom/avos/avoscloud/okio/ByteString;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->name:Lcom/avos/avoscloud/okio/ByteString;

    .line 33
    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->value:Lcom/avos/avoscloud/okio/ByteString;

    .line 34
    invoke-virtual {p1}, Lcom/avos/avoscloud/okio/ByteString;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p2}, Lcom/avos/avoscloud/okio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->hpackSize:I

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/okio/ByteString;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-static {p2}, Lcom/avos/avoscloud/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/okhttp/internal/framed/Header;-><init>(Lcom/avos/avoscloud/okio/ByteString;Lcom/avos/avoscloud/okio/ByteString;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-static {p1}, Lcom/avos/avoscloud/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v0

    invoke-static {p2}, Lcom/avos/avoscloud/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/Header;-><init>(Lcom/avos/avoscloud/okio/ByteString;Lcom/avos/avoscloud/okio/ByteString;)V

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 38
    instance-of v1, p1, Lcom/avos/avoscloud/okhttp/internal/framed/Header;

    if-eqz v1, :cond_0

    .line 39
    check-cast p1, Lcom/avos/avoscloud/okhttp/internal/framed/Header;

    .line 40
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->name:Lcom/avos/avoscloud/okio/ByteString;

    iget-object v2, p1, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->name:Lcom/avos/avoscloud/okio/ByteString;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->value:Lcom/avos/avoscloud/okio/ByteString;

    iget-object v2, p1, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->value:Lcom/avos/avoscloud/okio/ByteString;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 43
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 47
    .line 48
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->name:Lcom/avos/avoscloud/okio/ByteString;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/ByteString;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 49
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->value:Lcom/avos/avoscloud/okio/ByteString;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okio/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->name:Lcom/avos/avoscloud/okio/ByteString;

    invoke-virtual {v3}, Lcom/avos/avoscloud/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->value:Lcom/avos/avoscloud/okio/ByteString;

    invoke-virtual {v3}, Lcom/avos/avoscloud/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

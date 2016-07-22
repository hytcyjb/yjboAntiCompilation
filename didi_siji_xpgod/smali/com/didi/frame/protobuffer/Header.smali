.class public final Lcom/didi/frame/protobuffer/Header;
.super Lcom/squareup/wire/Message;
.source "Header.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/Header$1;,
        Lcom/didi/frame/protobuffer/Header$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_AUTH_USER_ID:Ljava/lang/Long;

.field public static final DEFAULT_LOG_ID:Lokio/ByteString;

.field public static final DEFAULT_MSG_ID:Ljava/lang/Long;

.field public static final DEFAULT_TIMESTAMP:Ljava/lang/Long;

.field public static final DEFAULT_TYPE:Ljava/lang/Integer;


# instance fields
.field public final auth_user_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final log_id:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final msg_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final user_agent:Lcom/didi/frame/protobuffer/UserAgent;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/Header;->DEFAULT_TYPE:Ljava/lang/Integer;

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/Header;->DEFAULT_MSG_ID:Ljava/lang/Long;

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/Header;->DEFAULT_AUTH_USER_ID:Ljava/lang/Long;

    .line 19
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/didi/frame/protobuffer/Header;->DEFAULT_LOG_ID:Lokio/ByteString;

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/Header;->DEFAULT_TIMESTAMP:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/Header$Builder;)V
    .locals 7
    .parameter "builder"

    .prologue
    .line 59
    iget-object v1, p1, Lcom/didi/frame/protobuffer/Header$Builder;->type:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/Header$Builder;->msg_id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/Header$Builder;->auth_user_id:Ljava/lang/Long;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/Header$Builder;->log_id:Lokio/ByteString;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/Header$Builder;->user_agent:Lcom/didi/frame/protobuffer/UserAgent;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/Header$Builder;->timestamp:Ljava/lang/Long;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/didi/frame/protobuffer/Header;-><init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Lokio/ByteString;Lcom/didi/frame/protobuffer/UserAgent;Ljava/lang/Long;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/Header;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/Header$Builder;Lcom/didi/frame/protobuffer/Header$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/Header;-><init>(Lcom/didi/frame/protobuffer/Header$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Lokio/ByteString;Lcom/didi/frame/protobuffer/UserAgent;Ljava/lang/Long;)V
    .locals 0
    .parameter "type"
    .parameter "msg_id"
    .parameter "auth_user_id"
    .parameter "log_id"
    .parameter "user_agent"
    .parameter "timestamp"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Header;->type:Ljava/lang/Integer;

    .line 51
    iput-object p2, p0, Lcom/didi/frame/protobuffer/Header;->msg_id:Ljava/lang/Long;

    .line 52
    iput-object p3, p0, Lcom/didi/frame/protobuffer/Header;->auth_user_id:Ljava/lang/Long;

    .line 53
    iput-object p4, p0, Lcom/didi/frame/protobuffer/Header;->log_id:Lokio/ByteString;

    .line 54
    iput-object p5, p0, Lcom/didi/frame/protobuffer/Header;->user_agent:Lcom/didi/frame/protobuffer/UserAgent;

    .line 55
    iput-object p6, p0, Lcom/didi/frame/protobuffer/Header;->timestamp:Ljava/lang/Long;

    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    if-ne p1, p0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/Header;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 67
    check-cast v0, Lcom/didi/frame/protobuffer/Header;

    .line 68
    .local v0, o:Lcom/didi/frame/protobuffer/Header;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/Header;->type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Header;->type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Header;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Header;->msg_id:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Header;->msg_id:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Header;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Header;->auth_user_id:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Header;->auth_user_id:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Header;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Header;->log_id:Lokio/ByteString;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Header;->log_id:Lokio/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Header;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Header;->user_agent:Lcom/didi/frame/protobuffer/UserAgent;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Header;->user_agent:Lcom/didi/frame/protobuffer/UserAgent;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Header;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Header;->timestamp:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Header;->timestamp:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Header;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 78
    iget v0, p0, Lcom/didi/frame/protobuffer/Header;->hashCode:I

    .line 79
    .local v0, result:I
    if-nez v0, :cond_1

    .line 80
    iget-object v2, p0, Lcom/didi/frame/protobuffer/Header;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Header;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 81
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Header;->msg_id:Ljava/lang/Long;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Header;->msg_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 82
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Header;->auth_user_id:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Header;->auth_user_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 83
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Header;->log_id:Lokio/ByteString;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Header;->log_id:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 84
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Header;->user_agent:Lcom/didi/frame/protobuffer/UserAgent;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Header;->user_agent:Lcom/didi/frame/protobuffer/UserAgent;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/UserAgent;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 85
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Header;->timestamp:Ljava/lang/Long;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/Header;->timestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 86
    iput v0, p0, Lcom/didi/frame/protobuffer/Header;->hashCode:I

    .line 88
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 80
    goto :goto_0

    :cond_3
    move v2, v1

    .line 81
    goto :goto_1

    :cond_4
    move v2, v1

    .line 82
    goto :goto_2

    :cond_5
    move v2, v1

    .line 83
    goto :goto_3

    :cond_6
    move v2, v1

    .line 84
    goto :goto_4
.end method

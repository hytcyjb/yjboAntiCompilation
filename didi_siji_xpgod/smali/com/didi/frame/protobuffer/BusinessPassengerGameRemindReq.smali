.class public final Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;
.super Lcom/squareup/wire/Message;
.source "BusinessPassengerGameRemindReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$1;,
        Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_H5_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_ICON_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Ljava/lang/Integer;


# instance fields
.field public final h5_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final icon_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->DEFAULT_TYPE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 51
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;->type:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;->h5_url:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;->icon_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;->title:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;-><init>(Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "h5_url"
    .parameter "icon_url"
    .parameter "title"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->type:Ljava/lang/Integer;

    .line 45
    iput-object p2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->h5_url:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->icon_url:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->title:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    if-ne p1, p0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 59
    check-cast v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;

    .line 60
    .local v0, o:Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->h5_url:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->h5_url:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->icon_url:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->icon_url:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 68
    iget v0, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->hashCode:I

    .line 69
    .local v0, result:I
    if-nez v0, :cond_1

    .line 70
    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 71
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->h5_url:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->h5_url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 72
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->icon_url:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->icon_url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 73
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->title:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 74
    iput v0, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->hashCode:I

    .line 76
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 70
    goto :goto_0

    :cond_3
    move v2, v1

    .line 71
    goto :goto_1

    :cond_4
    move v2, v1

    .line 72
    goto :goto_2
.end method

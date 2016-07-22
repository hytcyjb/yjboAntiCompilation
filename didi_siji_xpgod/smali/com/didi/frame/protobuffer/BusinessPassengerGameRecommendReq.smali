.class public final Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;
.super Lcom/squareup/wire/Message;
.source "BusinessPassengerGameRecommendReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$1;,
        Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_DESCRIBE:Ljava/lang/String; = ""

.field public static final DEFAULT_DOWN_URL_AD:Ljava/lang/String; = ""

.field public static final DEFAULT_DOWN_URL_IOS:Ljava/lang/String; = ""

.field public static final DEFAULT_GAME_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_H5_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_ICON_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_INTERFACE_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Ljava/lang/Integer;


# instance fields
.field public final describe:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final down_url_ad:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final down_url_ios:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final game_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final h5_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final icon_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final interface_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final package_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->DEFAULT_TYPE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;)V
    .locals 11
    .parameter "builder"

    .prologue
    .line 99
    iget-object v1, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->icon_url:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->describe:Ljava/lang/String;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->type:Ljava/lang/Integer;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->game_id:Ljava/lang/String;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->package_name:Ljava/lang/String;

    iget-object v7, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->interface_name:Ljava/lang/String;

    iget-object v8, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->h5_url:Ljava/lang/String;

    iget-object v9, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->down_url_ad:Ljava/lang/String;

    iget-object v10, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->down_url_ios:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;-><init>(Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "icon_url"
    .parameter "title"
    .parameter "describe"
    .parameter "type"
    .parameter "game_id"
    .parameter "package_name"
    .parameter "interface_name"
    .parameter "h5_url"
    .parameter "down_url_ad"
    .parameter "down_url_ios"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->icon_url:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->title:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->describe:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->type:Ljava/lang/Integer;

    .line 90
    iput-object p5, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->game_id:Ljava/lang/String;

    .line 91
    iput-object p6, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->package_name:Ljava/lang/String;

    .line 92
    iput-object p7, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->interface_name:Ljava/lang/String;

    .line 93
    iput-object p8, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->h5_url:Ljava/lang/String;

    .line 94
    iput-object p9, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->down_url_ad:Ljava/lang/String;

    .line 95
    iput-object p10, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->down_url_ios:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    if-ne p1, p0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 106
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 107
    check-cast v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;

    .line 108
    .local v0, o:Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->icon_url:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->icon_url:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->describe:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->describe:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->game_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->game_id:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->package_name:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->package_name:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->interface_name:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->interface_name:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->h5_url:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->h5_url:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->down_url_ad:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->down_url_ad:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->down_url_ios:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->down_url_ios:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 122
    iget v0, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->hashCode:I

    .line 123
    .local v0, result:I
    if-nez v0, :cond_1

    .line 124
    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->icon_url:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->icon_url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 125
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 126
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->describe:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->describe:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 127
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 128
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->game_id:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->game_id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 129
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->package_name:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->package_name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 130
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->interface_name:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->interface_name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 131
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->h5_url:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->h5_url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 132
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->down_url_ad:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->down_url_ad:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v3, v2

    .line 133
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->down_url_ios:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->down_url_ios:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 134
    iput v0, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->hashCode:I

    .line 136
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 124
    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 125
    goto :goto_1

    :cond_4
    move v2, v1

    .line 126
    goto :goto_2

    :cond_5
    move v2, v1

    .line 127
    goto :goto_3

    :cond_6
    move v2, v1

    .line 128
    goto :goto_4

    :cond_7
    move v2, v1

    .line 129
    goto :goto_5

    :cond_8
    move v2, v1

    .line 130
    goto :goto_6

    :cond_9
    move v2, v1

    .line 131
    goto :goto_7

    :cond_a
    move v2, v1

    .line 132
    goto :goto_8
.end method

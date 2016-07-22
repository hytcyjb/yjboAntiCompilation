.class public final Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BusinessPassengerGameRemindReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;",
        ">;"
    }
.end annotation


# instance fields
.field public h5_url:Ljava/lang/String;

.field public icon_url:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 91
    if-nez p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;->type:Ljava/lang/Integer;

    .line 93
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->h5_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;->h5_url:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->icon_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;->icon_url:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;->title:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;->checkRequiredFields()V

    .line 133
    new-instance v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;-><init>(Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;->build()Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq;

    move-result-object v0

    return-object v0
.end method

.method public h5_url(Ljava/lang/String;)Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;
    .locals 0
    .parameter "h5_url"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;->h5_url:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public icon_url(Ljava/lang/String;)Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;
    .locals 0
    .parameter "icon_url"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;->icon_url:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;
    .locals 0
    .parameter "title"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;->title:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindReq$Builder;->type:Ljava/lang/Integer;

    .line 103
    return-object p0
.end method

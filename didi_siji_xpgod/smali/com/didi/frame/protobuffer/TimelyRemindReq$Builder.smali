.class public final Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TimelyRemindReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/TimelyRemindReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/TimelyRemindReq;",
        ">;"
    }
.end annotation


# instance fields
.field public cancel_btn_text:Ljava/lang/String;

.field public confirm_btn_text:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public msg_id:Ljava/lang/Integer;

.field public msg_type:Ljava/lang/Integer;

.field public msg_value:Ljava/lang/String;

.field public order_id:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 132
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/TimelyRemindReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 136
    if-nez p1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->msg_id:Ljava/lang/Integer;

    .line 138
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->msg_type:Ljava/lang/Integer;

    .line 139
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_value:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->msg_value:Ljava/lang/String;

    .line 140
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TimelyRemindReq;->order_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->order_id:Ljava/lang/String;

    .line 141
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TimelyRemindReq;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->title:Ljava/lang/String;

    .line 142
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TimelyRemindReq;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->content:Ljava/lang/String;

    .line 143
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TimelyRemindReq;->cancel_btn_text:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->cancel_btn_text:Ljava/lang/String;

    .line 144
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TimelyRemindReq;->confirm_btn_text:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->confirm_btn_text:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/TimelyRemindReq;
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->checkRequiredFields()V

    .line 215
    new-instance v0, Lcom/didi/frame/protobuffer/TimelyRemindReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/TimelyRemindReq;-><init>(Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;Lcom/didi/frame/protobuffer/TimelyRemindReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->build()Lcom/didi/frame/protobuffer/TimelyRemindReq;

    move-result-object v0

    return-object v0
.end method

.method public cancel_btn_text(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;
    .locals 0
    .parameter "cancel_btn_text"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->cancel_btn_text:Ljava/lang/String;

    .line 201
    return-object p0
.end method

.method public confirm_btn_text(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;
    .locals 0
    .parameter "confirm_btn_text"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->confirm_btn_text:Ljava/lang/String;

    .line 209
    return-object p0
.end method

.method public content(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;
    .locals 0
    .parameter "content"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->content:Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public msg_id(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;
    .locals 0
    .parameter "msg_id"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->msg_id:Ljava/lang/Integer;

    .line 153
    return-object p0
.end method

.method public msg_type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;
    .locals 0
    .parameter "msg_type"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->msg_type:Ljava/lang/Integer;

    .line 161
    return-object p0
.end method

.method public msg_value(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;
    .locals 0
    .parameter "msg_value"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->msg_value:Ljava/lang/String;

    .line 169
    return-object p0
.end method

.method public order_id(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;
    .locals 0
    .parameter "order_id"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->order_id:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;
    .locals 0
    .parameter "title"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->title:Ljava/lang/String;

    .line 185
    return-object p0
.end method

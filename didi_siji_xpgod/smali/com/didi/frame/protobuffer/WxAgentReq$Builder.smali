.class public final Lcom/didi/frame/protobuffer/WxAgentReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "WxAgentReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/WxAgentReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/WxAgentReq;",
        ">;"
    }
.end annotation


# instance fields
.field public bind_msg:Ljava/lang/String;

.field public bind_subject:Ljava/lang/String;

.field public bind_title:Ljava/lang/String;

.field public button_cancel:Ljava/lang/String;

.field public button_confirm:Ljava/lang/String;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/WxAgentReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 113
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/WxAgentReq;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->type:Ljava/lang/Integer;

    .line 115
    iget-object v0, p1, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->bind_title:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_subject:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->bind_subject:Ljava/lang/String;

    .line 117
    iget-object v0, p1, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->bind_msg:Ljava/lang/String;

    .line 118
    iget-object v0, p1, Lcom/didi/frame/protobuffer/WxAgentReq;->button_confirm:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->button_confirm:Ljava/lang/String;

    .line 119
    iget-object v0, p1, Lcom/didi/frame/protobuffer/WxAgentReq;->button_cancel:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->button_cancel:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public bind_msg(Ljava/lang/String;)Lcom/didi/frame/protobuffer/WxAgentReq$Builder;
    .locals 0
    .parameter "bind_msg"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->bind_msg:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public bind_subject(Ljava/lang/String;)Lcom/didi/frame/protobuffer/WxAgentReq$Builder;
    .locals 0
    .parameter "bind_subject"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->bind_subject:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public bind_title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/WxAgentReq$Builder;
    .locals 0
    .parameter "bind_title"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->bind_title:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public build()Lcom/didi/frame/protobuffer/WxAgentReq;
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->checkRequiredFields()V

    .line 173
    new-instance v0, Lcom/didi/frame/protobuffer/WxAgentReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/WxAgentReq;-><init>(Lcom/didi/frame/protobuffer/WxAgentReq$Builder;Lcom/didi/frame/protobuffer/WxAgentReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->build()Lcom/didi/frame/protobuffer/WxAgentReq;

    move-result-object v0

    return-object v0
.end method

.method public button_cancel(Ljava/lang/String;)Lcom/didi/frame/protobuffer/WxAgentReq$Builder;
    .locals 0
    .parameter "button_cancel"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->button_cancel:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public button_confirm(Ljava/lang/String;)Lcom/didi/frame/protobuffer/WxAgentReq$Builder;
    .locals 0
    .parameter "button_confirm"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->button_confirm:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/WxAgentReq$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->type:Ljava/lang/Integer;

    .line 127
    return-object p0
.end method

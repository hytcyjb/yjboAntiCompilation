.class public final Lcom/didi/frame/protobuffer/Payments$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Payments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/Payments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/Payments;",
        ">;"
    }
.end annotation


# instance fields
.field public act_url:Ljava/lang/String;

.field public extra_msg:Ljava/lang/String;

.field public icon_url:Ljava/lang/String;

.field public payment_mode:Ljava/lang/Integer;

.field public payment_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/Payments;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 102
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Payments;->payment_mode:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Payments$Builder;->payment_mode:Ljava/lang/Integer;

    .line 104
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Payments;->payment_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Payments$Builder;->payment_name:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Payments;->icon_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Payments$Builder;->icon_url:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Payments;->extra_msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Payments$Builder;->extra_msg:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Payments;->act_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Payments$Builder;->act_url:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public act_url(Ljava/lang/String;)Lcom/didi/frame/protobuffer/Payments$Builder;
    .locals 0
    .parameter "act_url"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Payments$Builder;->act_url:Ljava/lang/String;

    .line 147
    return-object p0
.end method

.method public build()Lcom/didi/frame/protobuffer/Payments;
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/Payments$Builder;->checkRequiredFields()V

    .line 153
    new-instance v0, Lcom/didi/frame/protobuffer/Payments;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/Payments;-><init>(Lcom/didi/frame/protobuffer/Payments$Builder;Lcom/didi/frame/protobuffer/Payments$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/Payments$Builder;->build()Lcom/didi/frame/protobuffer/Payments;

    move-result-object v0

    return-object v0
.end method

.method public extra_msg(Ljava/lang/String;)Lcom/didi/frame/protobuffer/Payments$Builder;
    .locals 0
    .parameter "extra_msg"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Payments$Builder;->extra_msg:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public icon_url(Ljava/lang/String;)Lcom/didi/frame/protobuffer/Payments$Builder;
    .locals 0
    .parameter "icon_url"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Payments$Builder;->icon_url:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public payment_mode(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/Payments$Builder;
    .locals 0
    .parameter "payment_mode"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Payments$Builder;->payment_mode:Ljava/lang/Integer;

    .line 115
    return-object p0
.end method

.method public payment_name(Ljava/lang/String;)Lcom/didi/frame/protobuffer/Payments$Builder;
    .locals 0
    .parameter "payment_name"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Payments$Builder;->payment_name:Ljava/lang/String;

    .line 123
    return-object p0
.end method

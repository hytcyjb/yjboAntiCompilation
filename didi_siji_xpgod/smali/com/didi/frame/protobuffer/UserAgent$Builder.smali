.class public final Lcom/didi/frame/protobuffer/UserAgent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/UserAgent;",
        ">;"
    }
.end annotation


# instance fields
.field public carrier_operator:Ljava/lang/String;

.field public client_ver:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public network:Ljava/lang/String;

.field public os_type:Ljava/lang/String;

.field public os_ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/UserAgent;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 125
    if-nez p1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/UserAgent;->os_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/UserAgent$Builder;->os_type:Ljava/lang/String;

    .line 127
    iget-object v0, p1, Lcom/didi/frame/protobuffer/UserAgent;->os_ver:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/UserAgent$Builder;->os_ver:Ljava/lang/String;

    .line 128
    iget-object v0, p1, Lcom/didi/frame/protobuffer/UserAgent;->model:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/UserAgent$Builder;->model:Ljava/lang/String;

    .line 129
    iget-object v0, p1, Lcom/didi/frame/protobuffer/UserAgent;->client_ver:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/UserAgent$Builder;->client_ver:Ljava/lang/String;

    .line 130
    iget-object v0, p1, Lcom/didi/frame/protobuffer/UserAgent;->network:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/UserAgent$Builder;->network:Ljava/lang/String;

    .line 131
    iget-object v0, p1, Lcom/didi/frame/protobuffer/UserAgent;->location:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/UserAgent$Builder;->location:Ljava/lang/String;

    .line 132
    iget-object v0, p1, Lcom/didi/frame/protobuffer/UserAgent;->carrier_operator:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/UserAgent$Builder;->carrier_operator:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/UserAgent;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Lcom/didi/frame/protobuffer/UserAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/UserAgent;-><init>(Lcom/didi/frame/protobuffer/UserAgent$Builder;Lcom/didi/frame/protobuffer/UserAgent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/UserAgent$Builder;->build()Lcom/didi/frame/protobuffer/UserAgent;

    move-result-object v0

    return-object v0
.end method

.method public carrier_operator(Ljava/lang/String;)Lcom/didi/frame/protobuffer/UserAgent$Builder;
    .locals 0
    .parameter "carrier_operator"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/didi/frame/protobuffer/UserAgent$Builder;->carrier_operator:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public client_ver(Ljava/lang/String;)Lcom/didi/frame/protobuffer/UserAgent$Builder;
    .locals 0
    .parameter "client_ver"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/didi/frame/protobuffer/UserAgent$Builder;->client_ver:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public location(Ljava/lang/String;)Lcom/didi/frame/protobuffer/UserAgent$Builder;
    .locals 0
    .parameter "location"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/didi/frame/protobuffer/UserAgent$Builder;->location:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method public model(Ljava/lang/String;)Lcom/didi/frame/protobuffer/UserAgent$Builder;
    .locals 0
    .parameter "model"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/didi/frame/protobuffer/UserAgent$Builder;->model:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public network(Ljava/lang/String;)Lcom/didi/frame/protobuffer/UserAgent$Builder;
    .locals 0
    .parameter "network"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/didi/frame/protobuffer/UserAgent$Builder;->network:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public os_type(Ljava/lang/String;)Lcom/didi/frame/protobuffer/UserAgent$Builder;
    .locals 0
    .parameter "os_type"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/didi/frame/protobuffer/UserAgent$Builder;->os_type:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public os_ver(Ljava/lang/String;)Lcom/didi/frame/protobuffer/UserAgent$Builder;
    .locals 0
    .parameter "os_ver"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/didi/frame/protobuffer/UserAgent$Builder;->os_ver:Ljava/lang/String;

    .line 148
    return-object p0
.end method

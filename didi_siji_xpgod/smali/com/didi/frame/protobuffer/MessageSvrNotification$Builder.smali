.class public final Lcom/didi/frame/protobuffer/MessageSvrNotification$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MessageSvrNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/MessageSvrNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/MessageSvrNotification;",
        ">;"
    }
.end annotation


# instance fields
.field public messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;",
            ">;"
        }
    .end annotation
.end field

.field public sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/MessageSvrNotification;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 63
    if-nez p1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrNotification;->sessions:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/MessageSvrNotification;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/MessageSvrNotification;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrNotification$Builder;->sessions:Ljava/util/List;

    .line 65
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrNotification;->messages:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/MessageSvrNotification;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/MessageSvrNotification;->access$100(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrNotification$Builder;->messages:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/MessageSvrNotification;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/didi/frame/protobuffer/MessageSvrNotification;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/MessageSvrNotification;-><init>(Lcom/didi/frame/protobuffer/MessageSvrNotification$Builder;Lcom/didi/frame/protobuffer/MessageSvrNotification$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/MessageSvrNotification$Builder;->build()Lcom/didi/frame/protobuffer/MessageSvrNotification;

    move-result-object v0

    return-object v0
.end method

.method public messages(Ljava/util/List;)Lcom/didi/frame/protobuffer/MessageSvrNotification$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;",
            ">;)",
            "Lcom/didi/frame/protobuffer/MessageSvrNotification$Builder;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, messages:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/MessageSvrNotification$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrNotification$Builder;->messages:Ljava/util/List;

    .line 75
    return-object p0
.end method

.method public sessions(Ljava/util/List;)Lcom/didi/frame/protobuffer/MessageSvrNotification$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;",
            ">;)",
            "Lcom/didi/frame/protobuffer/MessageSvrNotification$Builder;"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, sessions:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/MessageSvrNotification$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrNotification$Builder;->sessions:Ljava/util/List;

    .line 70
    return-object p0
.end method

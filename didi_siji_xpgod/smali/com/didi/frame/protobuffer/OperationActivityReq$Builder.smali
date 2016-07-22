.class public final Lcom/didi/frame/protobuffer/OperationActivityReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OperationActivityReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/OperationActivityReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/OperationActivityReq;",
        ">;"
    }
.end annotation


# instance fields
.field public activity_ded:Ljava/lang/String;

.field public activity_doc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/OperationActivityReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 70
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OperationActivityReq;->activity_doc:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OperationActivityReq$Builder;->activity_doc:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OperationActivityReq;->activity_ded:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OperationActivityReq$Builder;->activity_ded:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public activity_ded(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OperationActivityReq$Builder;
    .locals 0
    .parameter "activity_ded"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OperationActivityReq$Builder;->activity_ded:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public activity_doc(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OperationActivityReq$Builder;
    .locals 0
    .parameter "activity_doc"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OperationActivityReq$Builder;->activity_doc:Ljava/lang/String;

    .line 80
    return-object p0
.end method

.method public build()Lcom/didi/frame/protobuffer/OperationActivityReq;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/didi/frame/protobuffer/OperationActivityReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/OperationActivityReq;-><init>(Lcom/didi/frame/protobuffer/OperationActivityReq$Builder;Lcom/didi/frame/protobuffer/OperationActivityReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/OperationActivityReq$Builder;->build()Lcom/didi/frame/protobuffer/OperationActivityReq;

    move-result-object v0

    return-object v0
.end method

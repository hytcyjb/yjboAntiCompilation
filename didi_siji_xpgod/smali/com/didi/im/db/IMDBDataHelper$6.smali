.class final Lcom/didi/im/db/IMDBDataHelper$6;
.super Ljava/lang/Object;
.source "IMDBDataHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/db/IMDBDataHelper;->failedCallback(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;


# direct methods
.method constructor <init>(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/didi/im/db/IMDBDataHelper$6;->val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/didi/im/db/IMDBDataHelper$6;->val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;->failed(Ljava/lang/Exception;)V

    .line 1122
    return-void
.end method

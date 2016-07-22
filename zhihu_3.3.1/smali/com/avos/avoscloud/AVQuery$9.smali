.class Lcom/avos/avoscloud/AVQuery$9;
.super Lcom/avos/avoscloud/GetCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->getInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/GetCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVQuery;

.field final synthetic val$internalCallback:Lcom/avos/avoscloud/GetCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/GetCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$9;->this$0:Lcom/avos/avoscloud/AVQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$9;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$9;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$9;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 1423
    :cond_0
    return-void
.end method

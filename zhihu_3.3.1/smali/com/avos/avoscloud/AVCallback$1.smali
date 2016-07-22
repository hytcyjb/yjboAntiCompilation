.class Lcom/avos/avoscloud/AVCallback$1;
.super Ljava/lang/Object;
.source "AVCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVCallback;

.field final synthetic val$parseException:Lcom/avos/avoscloud/AVException;

.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVCallback;Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9
    iput-object p1, p0, Lcom/avos/avoscloud/AVCallback$1;->this$0:Lcom/avos/avoscloud/AVCallback;

    iput-object p2, p0, Lcom/avos/avoscloud/AVCallback$1;->val$t:Ljava/lang/Object;

    iput-object p3, p0, Lcom/avos/avoscloud/AVCallback$1;->val$parseException:Lcom/avos/avoscloud/AVException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 12
    iget-object v0, p0, Lcom/avos/avoscloud/AVCallback$1;->this$0:Lcom/avos/avoscloud/AVCallback;

    iget-object v1, p0, Lcom/avos/avoscloud/AVCallback$1;->val$t:Ljava/lang/Object;

    iget-object v2, p0, Lcom/avos/avoscloud/AVCallback$1;->val$parseException:Lcom/avos/avoscloud/AVException;

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVCallback;->internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 13
    return-void
.end method

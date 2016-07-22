.class Lcom/avos/avoscloud/AVQuery$11;
.super Lcom/avos/avoscloud/CountCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->count()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVQuery;

.field final synthetic val$value:[I


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVQuery;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$11;->this$0:Lcom/avos/avoscloud/AVQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$11;->val$value:[I

    invoke-direct {p0}, Lcom/avos/avoscloud/CountCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(ILcom/avos/avoscloud/AVException;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1485
    if-nez p2, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$11;->val$value:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1490
    :goto_0
    return-void

    .line 1488
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method protected mustRunOnUIThread()Z
    .locals 1

    .prologue
    .line 1494
    const/4 v0, 0x0

    return v0
.end method

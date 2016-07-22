.class final Lcom/avos/avoscloud/AVOSCloud$8;
.super Lcom/avos/avoscloud/callback/AVServerDateCallback;
.source "AVOSCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVOSCloud;->getServerDate()Ljava/util/Date;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$results:[Ljava/util/Date;


# direct methods
.method constructor <init>([Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Lcom/avos/avoscloud/AVOSCloud$8;->val$results:[Ljava/util/Date;

    invoke-direct {p0}, Lcom/avos/avoscloud/callback/AVServerDateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/Date;Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 667
    if-nez p2, :cond_0

    .line 668
    iget-object v0, p0, Lcom/avos/avoscloud/AVOSCloud$8;->val$results:[Ljava/util/Date;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 672
    :goto_0
    return-void

    .line 670
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method public mustRunOnUIThread()Z
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x0

    return v0
.end method

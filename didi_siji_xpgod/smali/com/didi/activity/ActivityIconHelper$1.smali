.class final Lcom/didi/activity/ActivityIconHelper$1;
.super Lthread/Job;
.source "ActivityIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/activity/ActivityIconHelper;->saveIcons(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$icons:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/didi/activity/ActivityIconHelper$1;->val$icons:Ljava/util/List;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/activity/ActivityIconHelper$1;->val$icons:Ljava/util/List;

    #calls: Lcom/didi/activity/ActivityIconHelper;->downloadIconsIfNeed(Ljava/util/List;)V
    invoke-static {v0}, Lcom/didi/activity/ActivityIconHelper;->access$000(Ljava/util/List;)V

    .line 72
    iget-object v0, p0, Lcom/didi/activity/ActivityIconHelper$1;->val$icons:Ljava/util/List;

    #calls: Lcom/didi/activity/ActivityIconHelper;->saveIconList(Ljava/util/List;)V
    invoke-static {v0}, Lcom/didi/activity/ActivityIconHelper;->access$100(Ljava/util/List;)V

    .line 73
    return-void
.end method

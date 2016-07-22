.class final Lcom/didi/flier/business/FlierIconHelper$1;
.super Lthread/Job;
.source "FlierIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/business/FlierIconHelper;->saveIcons(Ljava/util/List;)V
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
    .line 67
    iput-object p1, p0, Lcom/didi/flier/business/FlierIconHelper$1;->val$icons:Ljava/util/List;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/didi/flier/business/FlierIconHelper$1;->val$icons:Ljava/util/List;

    #calls: Lcom/didi/flier/business/FlierIconHelper;->downloadIconsIfNeed(Ljava/util/List;)V
    invoke-static {v0}, Lcom/didi/flier/business/FlierIconHelper;->access$000(Ljava/util/List;)V

    .line 77
    iget-object v0, p0, Lcom/didi/flier/business/FlierIconHelper$1;->val$icons:Ljava/util/List;

    #calls: Lcom/didi/flier/business/FlierIconHelper;->saveIconList(Ljava/util/List;)V
    invoke-static {v0}, Lcom/didi/flier/business/FlierIconHelper;->access$100(Ljava/util/List;)V

    .line 78
    return-void
.end method

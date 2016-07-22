.class Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$8;
.super Ljava/lang/Object;
.source "TaxiRealtimeFragment.java"

# interfaces
.implements Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$8;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDestoryView()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$8;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$500(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

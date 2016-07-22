.class Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter$1;
.super Ljava/lang/Object;
.source "DDriveDriverMarkerAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->setInfo(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;

.field final synthetic val$driverInfoWithOutCountLayout:Landroid/widget/LinearLayout;

.field final synthetic val$name:Landroid/widget/TextView;

.field final synthetic val$star:Lcom/didi/common/ui/component/FiveStar;


# direct methods
.method constructor <init>(Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/didi/common/ui/component/FiveStar;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter$1;->this$0:Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;

    iput-object p2, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter$1;->val$driverInfoWithOutCountLayout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter$1;->val$name:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter$1;->val$star:Lcom/didi/common/ui/component/FiveStar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 79
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter$1;->val$driverInfoWithOutCountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 81
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter$1;->val$name:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    .line 82
    .local v1, nameViewWidth:I
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter$1;->val$star:Lcom/didi/common/ui/component/FiveStar;

    invoke-virtual {v3}, Lcom/didi/common/ui/component/FiveStar;->getWidth()I

    move-result v2

    .line 83
    .local v2, starViewWidth:I
    if-lt v1, v2, :cond_0

    move v0, v1

    .line 85
    .local v0, adjustedWidth:I
    :goto_0
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter$1;->this$0:Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;

    iget-object v4, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter$1;->val$driverInfoWithOutCountLayout:Landroid/widget/LinearLayout;

    #calls: Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->adjustDriverArrowParams(Landroid/widget/LinearLayout;I)V
    invoke-static {v3, v4, v0}, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->access$000(Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;Landroid/widget/LinearLayout;I)V

    .line 86
    return-void

    .end local v0           #adjustedWidth:I
    :cond_0
    move v0, v2

    .line 83
    goto :goto_0
.end method

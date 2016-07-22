.class Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$3;
.super Ljava/lang/Object;
.source "BtsRouteMatchDegreeSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$3;->this$0:Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 184
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$3;->this$0:Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->finish()V

    .line 187
    :cond_0
    return-void
.end method

.class Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$2;
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
    .line 166
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$2;->this$0:Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080198

    if-ne v0, v1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$2;->this$0:Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;

    const/4 v1, 0x3

    #calls: Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->setChoice(IZ)V
    invoke-static {v0, v1, v2}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->access$100(Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;IZ)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08019a

    if-ne v0, v1, :cond_2

    .line 173
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$2;->this$0:Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;

    const/4 v1, 0x2

    #calls: Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->setChoice(IZ)V
    invoke-static {v0, v1, v2}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->access$100(Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;IZ)V

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08019c

    if-ne v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$2;->this$0:Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;

    #calls: Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->setChoice(IZ)V
    invoke-static {v0, v2, v2}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->access$100(Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;IZ)V

    goto :goto_0
.end method

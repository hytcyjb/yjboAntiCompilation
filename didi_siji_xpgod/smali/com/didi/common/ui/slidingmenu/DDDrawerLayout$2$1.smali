.class Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$2$1;
.super Ljava/lang/Object;
.source "DDDrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$2;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$2;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$2$1;->this$1:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$2$1;->this$1:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$2;

    iget-object v0, v0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$2;->this$0:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    invoke-virtual {v0}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->closeDrawers()V

    .line 68
    return-void
.end method

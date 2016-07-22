.class Lcom/didi/common/ui/userinfo/BottomListMenu$1;
.super Ljava/lang/Object;
.source "BottomListMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/userinfo/BottomListMenu;-><init>(Landroid/app/Activity;Landroid/view/View;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/BottomListMenu;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/BottomListMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/BottomListMenu$1;->this$0:Lcom/didi/common/ui/userinfo/BottomListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu$1;->this$0:Lcom/didi/common/ui/userinfo/BottomListMenu;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/BottomListMenu;->onCancel()V

    .line 57
    return-void
.end method

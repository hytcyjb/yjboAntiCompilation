.class Lcom/didi/frame/departure/DepartSearchTitle$3;
.super Ljava/lang/Object;
.source "DepartSearchTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/departure/DepartSearchTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/departure/DepartSearchTitle;


# direct methods
.method constructor <init>(Lcom/didi/frame/departure/DepartSearchTitle;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/didi/frame/departure/DepartSearchTitle$3;->this$0:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle$3;->this$0:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartSearchTitle;->clearInput()V

    .line 128
    return-void
.end method

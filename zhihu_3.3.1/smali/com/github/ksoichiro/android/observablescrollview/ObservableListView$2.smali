.class Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$2;
.super Ljava/lang/Object;
.source "ObservableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/MotionEvent;

.field final synthetic c:Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;


# direct methods
.method constructor <init>(Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$2;->c:Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;

    iput-object p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$2;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$2;->b:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$2;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$2;->b:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 194
    return-void
.end method

.class Lcom/flipboard/bottomsheet/BottomSheetLayout$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomSheetLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field protected c:Z

.field final synthetic d:Lcom/flipboard/bottomsheet/BottomSheetLayout;


# direct methods
.method private constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$a;->d:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/BottomSheetLayout$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout$a;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$a;->c:Z

    .line 55
    return-void
.end method

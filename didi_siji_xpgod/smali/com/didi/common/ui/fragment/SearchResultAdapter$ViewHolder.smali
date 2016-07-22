.class Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/SearchResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public mAddr:Landroid/widget/TextView;

.field public mName:Landroid/widget/TextView;

.field public mProgress:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/didi/common/ui/fragment/SearchResultAdapter;


# direct methods
.method private constructor <init>(Lcom/didi/common/ui/fragment/SearchResultAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/SearchResultAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/common/ui/fragment/SearchResultAdapter;Lcom/didi/common/ui/fragment/SearchResultAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;-><init>(Lcom/didi/common/ui/fragment/SearchResultAdapter;)V

    return-void
.end method

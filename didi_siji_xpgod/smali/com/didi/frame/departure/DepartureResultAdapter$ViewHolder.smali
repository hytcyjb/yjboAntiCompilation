.class Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DepartureResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/departure/DepartureResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public icon:Lx/ImageView;

.field public mAddr:Landroid/widget/TextView;

.field public mName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/didi/frame/departure/DepartureResultAdapter;


# direct methods
.method private constructor <init>(Lcom/didi/frame/departure/DepartureResultAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;->this$0:Lcom/didi/frame/departure/DepartureResultAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/departure/DepartureResultAdapter;Lcom/didi/frame/departure/DepartureResultAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;-><init>(Lcom/didi/frame/departure/DepartureResultAdapter;)V

    return-void
.end method

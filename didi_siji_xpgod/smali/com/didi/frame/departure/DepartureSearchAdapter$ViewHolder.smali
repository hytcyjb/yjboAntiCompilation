.class Lcom/didi/frame/departure/DepartureSearchAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DepartureSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/departure/DepartureSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public mAddr:Landroid/widget/TextView;

.field public mName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/didi/frame/departure/DepartureSearchAdapter;


# direct methods
.method private constructor <init>(Lcom/didi/frame/departure/DepartureSearchAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/didi/frame/departure/DepartureSearchAdapter$ViewHolder;->this$0:Lcom/didi/frame/departure/DepartureSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/departure/DepartureSearchAdapter;Lcom/didi/frame/departure/DepartureSearchAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/didi/frame/departure/DepartureSearchAdapter$ViewHolder;-><init>(Lcom/didi/frame/departure/DepartureSearchAdapter;)V

    return-void
.end method

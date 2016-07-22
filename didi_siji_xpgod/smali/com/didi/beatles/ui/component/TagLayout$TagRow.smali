.class Lcom/didi/beatles/ui/component/TagLayout$TagRow;
.super Ljava/lang/Object;
.source "TagLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/component/TagLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagRow"
.end annotation


# instance fields
.field public mRowLayout:Landroid/widget/LinearLayout;

.field public mTagList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTagViewList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field public mWidth:I

.field final synthetic this$0:Lcom/didi/beatles/ui/component/TagLayout;


# direct methods
.method private constructor <init>(Lcom/didi/beatles/ui/component/TagLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/didi/beatles/ui/component/TagLayout$TagRow;->this$0:Lcom/didi/beatles/ui/component/TagLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/beatles/ui/component/TagLayout;Lcom/didi/beatles/ui/component/TagLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/component/TagLayout$TagRow;-><init>(Lcom/didi/beatles/ui/component/TagLayout;)V

    return-void
.end method

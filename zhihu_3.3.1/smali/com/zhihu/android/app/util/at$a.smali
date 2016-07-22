.class public Lcom/zhihu/android/app/util/at$a;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/android/app/util/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/CharSequence;

.field public d:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/zhihu/android/app/util/at$a;->a:I

    .line 57
    iput p2, p0, Lcom/zhihu/android/app/util/at$a;->b:I

    .line 58
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/zhihu/android/app/util/at$a;->a:I

    .line 63
    iput-object p2, p0, Lcom/zhihu/android/app/util/at$a;->d:[Ljava/lang/Object;

    .line 65
    iput p3, p0, Lcom/zhihu/android/app/util/at$a;->b:I

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/zhihu/android/app/util/at$a;->c:Ljava/lang/CharSequence;

    .line 71
    iput p2, p0, Lcom/zhihu/android/app/util/at$a;->b:I

    .line 72
    return-void
.end method

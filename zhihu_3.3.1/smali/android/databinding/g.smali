.class public Landroid/databinding/g;
.super Landroid/databinding/b;
.source "ListChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/databinding/b",
        "<",
        "Landroid/databinding/i$a;",
        "Landroid/databinding/i;",
        "Landroid/databinding/g$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/e/h$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/h$c",
            "<",
            "Landroid/databinding/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Landroid/databinding/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/b$a",
            "<",
            "Landroid/databinding/i$a;",
            "Landroid/databinding/i;",
            "Landroid/databinding/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Landroid/support/v4/e/h$c;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/support/v4/e/h$c;-><init>(I)V

    sput-object v0, Landroid/databinding/g;->a:Landroid/support/v4/e/h$c;

    .line 37
    new-instance v0, Landroid/databinding/g$1;

    invoke-direct {v0}, Landroid/databinding/g$1;-><init>()V

    sput-object v0, Landroid/databinding/g;->b:Landroid/databinding/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    sget-object v0, Landroid/databinding/g;->b:Landroid/databinding/b$a;

    invoke-direct {p0, v0}, Landroid/databinding/b;-><init>(Landroid/databinding/b$a;)V

    .line 143
    return-void
.end method

.method private static a(III)Landroid/databinding/g$a;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    sget-object v0, Landroid/databinding/g;->a:Landroid/support/v4/e/h$c;

    invoke-virtual {v0}, Landroid/support/v4/e/h$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/databinding/g$a;

    .line 123
    if-nez v0, :cond_0

    .line 124
    new-instance v0, Landroid/databinding/g$a;

    invoke-direct {v0}, Landroid/databinding/g$a;-><init>()V

    .line 126
    :cond_0
    iput p0, v0, Landroid/databinding/g$a;->a:I

    .line 127
    iput p1, v0, Landroid/databinding/g$a;->c:I

    .line 128
    iput p2, v0, Landroid/databinding/g$a;->b:I

    .line 129
    return-object v0
.end method


# virtual methods
.method public a(Landroid/databinding/i;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p2, v0, p3}, Landroid/databinding/g;->a(III)Landroid/databinding/g$a;

    move-result-object v0

    .line 81
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/databinding/g;->a(Landroid/databinding/i;ILandroid/databinding/g$a;)V

    .line 82
    return-void
.end method

.method public declared-synchronized a(Landroid/databinding/i;ILandroid/databinding/g$a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 136
    if-eqz p3, :cond_0

    .line 137
    sget-object v0, Landroid/databinding/g;->a:Landroid/support/v4/e/h$c;

    invoke-virtual {v0, p3}, Landroid/support/v4/e/h$c;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    check-cast p1, Landroid/databinding/i;

    check-cast p3, Landroid/databinding/g$a;

    invoke-virtual {p0, p1, p2, p3}, Landroid/databinding/g;->a(Landroid/databinding/i;ILandroid/databinding/g$a;)V

    return-void
.end method

.method public b(Landroid/databinding/i;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-static {p2, v0, p3}, Landroid/databinding/g;->a(III)Landroid/databinding/g$a;

    move-result-object v0

    .line 93
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Landroid/databinding/g;->a(Landroid/databinding/i;ILandroid/databinding/g$a;)V

    .line 94
    return-void
.end method

.method public c(Landroid/databinding/i;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {p2, v0, p3}, Landroid/databinding/g;->a(III)Landroid/databinding/g$a;

    move-result-object v0

    .line 118
    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1, v0}, Landroid/databinding/g;->a(Landroid/databinding/i;ILandroid/databinding/g$a;)V

    .line 119
    return-void
.end method

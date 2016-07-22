.class Lcom/android/volley/toolbox/h$a;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/toolbox/h;

.field private final b:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/Bitmap;

.field private d:Lcom/android/volley/VolleyError;

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/volley/toolbox/h$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/h;Lcom/android/volley/Request;Lcom/android/volley/toolbox/h$c;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/toolbox/h$c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/volley/toolbox/h$a;->a:Lcom/android/volley/toolbox/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/toolbox/h$a;->e:Ljava/util/LinkedList;

    .line 409
    iput-object p2, p0, Lcom/android/volley/toolbox/h$a;->b:Lcom/android/volley/Request;

    .line 410
    iget-object v0, p0, Lcom/android/volley/toolbox/h$a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 411
    return-void
.end method

.method static synthetic a(Lcom/android/volley/toolbox/h$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/volley/toolbox/h$a;->c:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/android/volley/toolbox/h$a;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/volley/toolbox/h$a;->e:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic b(Lcom/android/volley/toolbox/h$a;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/volley/toolbox/h$a;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/android/volley/VolleyError;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/volley/toolbox/h$a;->d:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public a(Lcom/android/volley/VolleyError;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/volley/toolbox/h$a;->d:Lcom/android/volley/VolleyError;

    .line 418
    return-void
.end method

.method public a(Lcom/android/volley/toolbox/h$c;)V
    .locals 1
    .parameter

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/volley/toolbox/h$a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 433
    return-void
.end method

.method public b(Lcom/android/volley/toolbox/h$c;)Z
    .locals 1
    .parameter

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/volley/toolbox/h$a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Lcom/android/volley/toolbox/h$a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/volley/toolbox/h$a;->b:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->h()V

    .line 445
    const/4 v0, 0x1

    .line 447
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

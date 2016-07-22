.class Lcom/android/volley/toolbox/h$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/android/volley/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/h;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/android/volley/toolbox/h;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/h;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/volley/toolbox/h$2;->b:Lcom/android/volley/toolbox/h;

    iput-object p2, p0, Lcom/android/volley/toolbox/h$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/volley/toolbox/h$2;->b:Lcom/android/volley/toolbox/h;

    iget-object v1, p0, Lcom/android/volley/toolbox/h$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/volley/toolbox/h;->a(Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    .line 261
    return-void
.end method

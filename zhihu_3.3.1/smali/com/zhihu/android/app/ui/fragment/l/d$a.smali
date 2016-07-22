.class public Lcom/zhihu/android/app/ui/fragment/l/d$a;
.super Ljava/lang/Object;
.source "ProfileEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/android/app/ui/fragment/l/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/zhihu/android/api/model/People;


# direct methods
.method public constructor <init>(Lcom/zhihu/android/api/model/People;)V
    .locals 0
    .parameter

    .prologue
    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/l/d$a;->a:Lcom/zhihu/android/api/model/People;

    .line 811
    return-void
.end method


# virtual methods
.method public a()Lcom/zhihu/android/api/model/People;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d$a;->a:Lcom/zhihu/android/api/model/People;

    return-object v0
.end method

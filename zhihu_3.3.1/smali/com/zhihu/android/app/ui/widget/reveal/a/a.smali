.class public interface abstract Lcom/zhihu/android/app/ui/widget/reveal/a/a;
.super Ljava/lang/Object;
.source "RevealAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/widget/reveal/a/a$c;,
        Lcom/zhihu/android/app/ui/widget/reveal/a/a$a;,
        Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;
    }
.end annotation


# static fields
.field public static final b:Lcom/zhihu/android/app/ui/widget/reveal/a/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/zhihu/android/app/ui/widget/reveal/a/a$c;

    invoke-direct {v0}, Lcom/zhihu/android/app/ui/widget/reveal/a/a$c;-><init>()V

    sput-object v0, Lcom/zhihu/android/app/ui/widget/reveal/a/a;->b:Lcom/zhihu/android/app/ui/widget/reveal/a/a$c;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;)V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract getRevealRadius()F
.end method

.method public abstract setRevealRadius(F)V
.end method

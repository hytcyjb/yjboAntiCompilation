.class Landroid/support/v7/preference/Preference$1;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/preference/Preference;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Landroid/support/v7/preference/Preference$1;->a:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/preference/Preference$1;->a:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/view/View;)V

    .line 143
    return-void
.end method

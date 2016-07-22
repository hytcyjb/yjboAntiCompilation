.class public abstract Lnet/tsz/afinal/FinalActivity;
.super Landroid/app/Activity;
.source "FinalActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/tsz/afinal/FinalActivity$Method;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$tsz$afinal$FinalActivity$Method:[I


# direct methods
.method static synthetic $SWITCH_TABLE$net$tsz$afinal$FinalActivity$Method()[I
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lnet/tsz/afinal/FinalActivity;->$SWITCH_TABLE$net$tsz$afinal$FinalActivity$Method:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/tsz/afinal/FinalActivity$Method;->values()[Lnet/tsz/afinal/FinalActivity$Method;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/tsz/afinal/FinalActivity$Method;->Click:Lnet/tsz/afinal/FinalActivity$Method;

    invoke-virtual {v1}, Lnet/tsz/afinal/FinalActivity$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lnet/tsz/afinal/FinalActivity$Method;->ItemClick:Lnet/tsz/afinal/FinalActivity$Method;

    invoke-virtual {v1}, Lnet/tsz/afinal/FinalActivity$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lnet/tsz/afinal/FinalActivity$Method;->LongClick:Lnet/tsz/afinal/FinalActivity$Method;

    invoke-virtual {v1}, Lnet/tsz/afinal/FinalActivity$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lnet/tsz/afinal/FinalActivity$Method;->itemLongClick:Lnet/tsz/afinal/FinalActivity$Method;

    invoke-virtual {v1}, Lnet/tsz/afinal/FinalActivity$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lnet/tsz/afinal/FinalActivity;->$SWITCH_TABLE$net$tsz$afinal$FinalActivity$Method:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static initInjectedView(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/tsz/afinal/FinalActivity;->initInjectedView(Ljava/lang/Object;Landroid/view/View;)V

    .line 52
    return-void
.end method

.method public static initInjectedView(Ljava/lang/Object;Landroid/view/View;)V
    .locals 10
    .parameter "injectedSource"
    .parameter "sourceView"

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 57
    .local v2, fields:[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-lez v6, :cond_0

    .line 58
    array-length v7, v2

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_1

    .line 87
    :cond_0
    return-void

    .line 58
    :cond_1
    aget-object v1, v2, v6

    .line 60
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v1, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 58
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 65
    :cond_3
    const-class v8, Lnet/tsz/afinal/annotation/view/ViewInject;

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lnet/tsz/afinal/annotation/view/ViewInject;

    .line 66
    .local v5, viewInject:Lnet/tsz/afinal/annotation/view/ViewInject;
    if-eqz v5, :cond_2

    .line 68
    invoke-interface {v5}, Lnet/tsz/afinal/annotation/view/ViewInject;->id()I

    move-result v4

    .line 69
    .local v4, viewId:I
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v1, p0, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    invoke-interface {v5}, Lnet/tsz/afinal/annotation/view/ViewInject;->click()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lnet/tsz/afinal/FinalActivity$Method;->Click:Lnet/tsz/afinal/FinalActivity$Method;

    invoke-static {p0, v1, v8, v9}, Lnet/tsz/afinal/FinalActivity;->setListener(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lnet/tsz/afinal/FinalActivity$Method;)V

    .line 72
    invoke-interface {v5}, Lnet/tsz/afinal/annotation/view/ViewInject;->longClick()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lnet/tsz/afinal/FinalActivity$Method;->LongClick:Lnet/tsz/afinal/FinalActivity$Method;

    invoke-static {p0, v1, v8, v9}, Lnet/tsz/afinal/FinalActivity;->setListener(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lnet/tsz/afinal/FinalActivity$Method;)V

    .line 73
    invoke-interface {v5}, Lnet/tsz/afinal/annotation/view/ViewInject;->itemClick()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lnet/tsz/afinal/FinalActivity$Method;->ItemClick:Lnet/tsz/afinal/FinalActivity$Method;

    invoke-static {p0, v1, v8, v9}, Lnet/tsz/afinal/FinalActivity;->setListener(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lnet/tsz/afinal/FinalActivity$Method;)V

    .line 74
    invoke-interface {v5}, Lnet/tsz/afinal/annotation/view/ViewInject;->itemLongClick()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lnet/tsz/afinal/FinalActivity$Method;->itemLongClick:Lnet/tsz/afinal/FinalActivity$Method;

    invoke-static {p0, v1, v8, v9}, Lnet/tsz/afinal/FinalActivity;->setListener(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lnet/tsz/afinal/FinalActivity$Method;)V

    .line 76
    invoke-interface {v5}, Lnet/tsz/afinal/annotation/view/ViewInject;->select()Lnet/tsz/afinal/annotation/view/Select;

    move-result-object v3

    .line 77
    .local v3, select:Lnet/tsz/afinal/annotation/view/Select;
    invoke-interface {v3}, Lnet/tsz/afinal/annotation/view/Select;->selected()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 78
    invoke-interface {v3}, Lnet/tsz/afinal/annotation/view/Select;->selected()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3}, Lnet/tsz/afinal/annotation/view/Select;->noSelected()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v1, v8, v9}, Lnet/tsz/afinal/FinalActivity;->setViewSelectListener(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 82
    .end local v3           #select:Lnet/tsz/afinal/annotation/view/Select;
    .end local v4           #viewId:I
    .end local v5           #viewInject:Lnet/tsz/afinal/annotation/view/ViewInject;
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static setListener(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lnet/tsz/afinal/FinalActivity$Method;)V
    .locals 3
    .parameter "injectedSource"
    .parameter "field"
    .parameter "methodName"
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, obj:Ljava/lang/Object;
    invoke-static {}, Lnet/tsz/afinal/FinalActivity;->$SWITCH_TABLE$net$tsz$afinal$FinalActivity$Method()[I

    move-result-object v1

    invoke-virtual {p3}, Lnet/tsz/afinal/FinalActivity$Method;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 106
    :pswitch_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Landroid/view/View;

    .end local v0           #obj:Ljava/lang/Object;
    new-instance v1, Lnet/tsz/afinal/annotation/view/EventListener;

    invoke-direct {v1, p0}, Lnet/tsz/afinal/annotation/view/EventListener;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lnet/tsz/afinal/annotation/view/EventListener;->click(Ljava/lang/String;)Lnet/tsz/afinal/annotation/view/EventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 111
    .restart local v0       #obj:Ljava/lang/Object;
    :pswitch_1
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 112
    check-cast v0, Landroid/widget/AbsListView;

    .end local v0           #obj:Ljava/lang/Object;
    new-instance v1, Lnet/tsz/afinal/annotation/view/EventListener;

    invoke-direct {v1, p0}, Lnet/tsz/afinal/annotation/view/EventListener;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lnet/tsz/afinal/annotation/view/EventListener;->itemClick(Ljava/lang/String;)Lnet/tsz/afinal/annotation/view/EventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 116
    .restart local v0       #obj:Ljava/lang/Object;
    :pswitch_2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 117
    check-cast v0, Landroid/view/View;

    .end local v0           #obj:Ljava/lang/Object;
    new-instance v1, Lnet/tsz/afinal/annotation/view/EventListener;

    invoke-direct {v1, p0}, Lnet/tsz/afinal/annotation/view/EventListener;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lnet/tsz/afinal/annotation/view/EventListener;->longClick(Ljava/lang/String;)Lnet/tsz/afinal/annotation/view/EventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 121
    .restart local v0       #obj:Ljava/lang/Object;
    :pswitch_3
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 122
    check-cast v0, Landroid/widget/AbsListView;

    .end local v0           #obj:Ljava/lang/Object;
    new-instance v1, Lnet/tsz/afinal/annotation/view/EventListener;

    invoke-direct {v1, p0}, Lnet/tsz/afinal/annotation/view/EventListener;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lnet/tsz/afinal/annotation/view/EventListener;->itemLongClick(Ljava/lang/String;)Lnet/tsz/afinal/annotation/view/EventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static setViewSelectListener(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "injectedSource"
    .parameter "field"
    .parameter "select"
    .parameter "noSelect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 93
    check-cast v0, Landroid/widget/AbsListView;

    .end local v0           #obj:Ljava/lang/Object;
    new-instance v1, Lnet/tsz/afinal/annotation/view/EventListener;

    invoke-direct {v1, p0}, Lnet/tsz/afinal/annotation/view/EventListener;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lnet/tsz/afinal/annotation/view/EventListener;->select(Ljava/lang/String;)Lnet/tsz/afinal/annotation/view/EventListener;

    move-result-object v1

    invoke-virtual {v1, p3}, Lnet/tsz/afinal/annotation/view/EventListener;->noSelect(Ljava/lang/String;)Lnet/tsz/afinal/annotation/view/EventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public setContentView(I)V
    .locals 0
    .parameter "layoutResID"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 34
    invoke-static {p0}, Lnet/tsz/afinal/FinalActivity;->initInjectedView(Landroid/app/Activity;)V

    .line 35
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 46
    invoke-static {p0}, Lnet/tsz/afinal/FinalActivity;->initInjectedView(Landroid/app/Activity;)V

    .line 47
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "view"
    .parameter "params"

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-static {p0}, Lnet/tsz/afinal/FinalActivity;->initInjectedView(Landroid/app/Activity;)V

    .line 41
    return-void
.end method

// 教程分类筛选
document.addEventListener('DOMContentLoaded', () => {
    const categoryBtns = document.querySelectorAll('.category-btn');
    const tutorialItems = document.querySelectorAll('.tutorial-item');

    categoryBtns.forEach(btn => {
        btn.addEventListener('click', () => {
            // 移除所有active类
            categoryBtns.forEach(b => b.classList.remove('active'));
            // 添加active类到当前按钮
            btn.classList.add('active');

            const category = btn.getAttribute('data-category');

            tutorialItems.forEach(item => {
                const itemCategory = item.getAttribute('data-category');
                
                if (category === 'all' || itemCategory === category) {
                    item.style.display = 'block';
                    setTimeout(() => {
                        item.style.opacity = '1';
                        item.style.transform = 'translateY(0)';
                    }, 10);
                } else {
                    item.style.opacity = '0';
                    item.style.transform = 'translateY(20px)';
                    setTimeout(() => {
                        item.style.display = 'none';
                    }, 300);
                }
            });
        });
    });
});

